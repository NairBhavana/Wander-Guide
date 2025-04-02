import React, { useState, useEffect, useCallback } from 'react';
import {
  View,
  Text,
  ScrollView,
  FlatList,
  ActivityIndicator,
  RefreshControl,
  StatusBar,
  TextInput,
  Animated,
  StyleSheet,
  TouchableOpacity,
  Modal,
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { MaterialIcons } from '@expo/vector-icons';
import { WebView } from 'react-native-webview';
import * as Linking from 'expo-linking';
import MenuBar from '../../components/MenuBar';
import { getEventsWithPlaceId } from '../../services/apiServices';
import CalendarView from './../../components/CalendarView';
import EventCard from './../../components/EventCard';

const EventsScreen = ({ route, navigation }) => {
  const { placeId, placeName } = route.params;
  const [events, setEvents] = useState([]);
  const [filteredEvents, setFilteredEvents] = useState([]);
  const [loading, setLoading] = useState(false);
  const [refreshing, setRefreshing] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const [isCalendarMinimized, setIsCalendarMinimized] = useState(false); // Expanded by default
  const [modalVisible, setModalVisible] = useState(false);
  const [mapUrl, setMapUrl] = useState('');

  const fetchEvents = useCallback(async (placeId) => {
    setLoading(true);
    try {
      const response = await getEventsWithPlaceId(placeId);
      if (response.success) {
        setEvents(response.events);
        setFilteredEvents(response.events);
      } else {
        alert('Error', response.error || 'No events found for this place');
      }
    } catch (error) {
      console.error('Error fetching events:', error);
      alert('Error', error.message || 'An unexpected error occurred');
    } finally {
      setLoading(false);
      setRefreshing(false);
    }
  }, []);

  useEffect(() => {
    fetchEvents(placeId);
  }, [placeId, fetchEvents]);

  const handleDateSelect = useCallback(
    (date) => {
      const filtered = date
        ? events.filter(
            (event) => new Date(event.date).toDateString() === date.toDateString()
          )
        : events;
      setFilteredEvents(filtered);
    },
    [events]
  );

  const handleSearch = useCallback(
    (query) => {
      setSearchQuery(query);
      const filtered = events.filter((event) =>
        event.title.toLowerCase().includes(query.toLowerCase())
      );
      setFilteredEvents(filtered);
    },
    [events]
  );

  const onRefresh = useCallback(() => {
    setRefreshing(true);
    fetchEvents(placeId);
  }, [fetchEvents, placeId]);

  return (
    <LinearGradient colors={['#1A1A1A', '#2C2C2C']} style={styles.container}>
      <StatusBar barStyle="light-content" />

      <ScrollView 
        contentContainerStyle={styles.scrollContainer} 
        refreshControl={
          <RefreshControl refreshing={refreshing} onRefresh={onRefresh} tintColor="#FF6F61" />
        }
      >
        {/* Header */}
        <View style={styles.header}>
          <TouchableOpacity style={styles.backButton} onPress={() => navigation.goBack()}>
            <MaterialIcons name="arrow-back" size={28} color="#FF6F61" />
          </TouchableOpacity>
          <View style={styles.headerContent}>
            <Text style={styles.headerTitle}>Events</Text>
            <Text style={styles.headerSubtitle}>{placeName || 'Upcoming Events'}</Text>
          </View>
        </View>

        {/* Calendar View */}
        <View style={styles.calendarContainer}>
          <CalendarView
            events={events}
            onDateSelect={handleDateSelect}
            isMinimized={isCalendarMinimized}
            toggleMinimize={() => setIsCalendarMinimized(!isCalendarMinimized)}
          />
        </View>

        {/* Search Input */}
        <TextInput
          style={styles.searchInput}
          placeholder="Search events..."
          value={searchQuery}
          onChangeText={handleSearch}
          placeholderTextColor="#BBBBBB"
        />

        {/* Events List */}
        {loading ? (
          <View style={styles.loadingContainer}>
            <ActivityIndicator size="large" color="#FF6F61" />
            <Text style={styles.loadingText}>Loading events...</Text>
          </View>
        ) : (
          <FlatList
            data={filteredEvents.length > 0 ? filteredEvents : events}
            keyExtractor={(item) => item.id.toString()}
            renderItem={({ item }) => (
              <EventCard item={item} onPress={() => console.log('Event clicked:', item)} />
            )}
            contentContainerStyle={styles.listContainer}
            scrollEnabled={false} // Prevent FlatList from scrolling
            ListEmptyComponent={
              <View style={styles.emptyContainer}>
                <Text style={styles.emptyText}>No events available</Text>
              </View>
            }
          />
        )}
      </ScrollView>

      <MenuBar />
    </LinearGradient>
  );
};

const styles = StyleSheet.create({
  container: { flex: 1 },
  scrollContainer: { paddingBottom: 20 },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    paddingVertical: 20,
    paddingHorizontal: 20,
    backgroundColor: '#2C2C2C',
    borderBottomLeftRadius: 20,
    borderBottomRightRadius: 20,
  },
  headerContent: { marginLeft: 15 },
  headerTitle: { fontSize: 34, fontWeight: 'bold', color: '#FFFFFF' },
  headerSubtitle: { fontSize: 16, color: '#BBBBBB' },
  backButton: { padding: 10 },
  calendarContainer: { paddingHorizontal: 20, marginVertical: 15 },
  searchInput: {
    backgroundColor: '#1A1A1A',
    borderRadius: 12,
    padding: 15,
    fontSize: 16,
    color: '#FFFFFF',
    marginHorizontal: 20,
    marginBottom: 15,
  },
  loadingContainer: { alignItems: 'center', marginTop: 20 },
  loadingText: { color: '#BBBBBB', marginTop: 10 },
  listContainer: { paddingHorizontal: 20 },
  emptyContainer: { alignItems: 'center', marginTop: 50 },
  emptyText: { color: '#BBBBBB', fontSize: 16 },
});

export default EventsScreen;
