import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { GoogleMap, LoadScript, Marker, Circle } from '@react-google-maps/api';
import Navbar from './Navbar';
import Footer from './Footer';
import Modal from 'react-modal'; // Import Modal from react-modal package

const mapContainerStyle = {
    width: '100%',
    height: '500px',
};

const Map = () => {
    const [spots, setSpots] = useState([]);
    const [center, setCenter] = useState({ lat: 23.3581, lng: 86.3608 }); // Default center to Purulia
    const [zoom, setZoom] = useState(12);
    const [searchQuery, setSearchQuery] = useState('');
    const [modalIsOpen, setModalIsOpen] = useState(false);

    // Fetch tourist spots from the API
    const fetchSpots = async () => {
        try {
            const response = await axios.get('http://localhost:5000/api/spots'); // Backend API to fetch spots
            if (response.data && response.data.length > 0) {
                setSpots(response.data); // Store spots in state
            } else {
                alert('No spots available');
            }
        } catch (error) {
            console.error('Error fetching spots:', error);
            alert('Failed to load tourist spots');
        }
    };

    useEffect(() => {
        fetchSpots();
    }, []);

    // Handle searching for a location
    const handleSearch = () => {
        const spot = spots.find(
            (s) => s.name.toLowerCase() === searchQuery.toLowerCase()
        );
        if (spot) {
            setCenter({ lat: spot.latitude, lng: spot.longitude });
            setZoom(16); // Adjust zoom level
        } else {
            alert('Spot not found!');
        }
    };

    // Handle modal open/close
    const openModal = () => setModalIsOpen(true);
    const closeModal = () => setModalIsOpen(false);

    // Handle map navigation when clicking a spot name in the modal
    const handleMapNavigation = (spot) => {
        setCenter({ lat: spot.latitude, lng: spot.longitude });
        setZoom(16); // Set higher zoom when navigating from the modal
        closeModal();
    };

    return (
        <div>
            <Navbar />
            <div className="Map-container">
                <h2>Tourist Spots Map</h2>

                {/* Search Bar */}
                <div className="map-content">
                    <input
                        id="advanced-input"
                        type="text"
                        placeholder="Search for a spot..."
                        value={searchQuery}
                        onChange={(e) => setSearchQuery(e.target.value)}
                    />
                    <button onClick={handleSearch} id="search-button"><i className="fas fa-search"></i>Search</button>
                    {/* Travel Guide Modal Button */}
                    <div>
                        <button className="open-btn" onClick={openModal}>Open Travel Guide</button>
                    </div>

                    {/* Travel Guide Modal */}
                    <Modal
                        isOpen={modalIsOpen}
                        onRequestClose={closeModal}
                        contentLabel="Travel Guide"
                        className="modal-content"
                        overlayClassName="modal-overlay"
                    >
                        <div className="modal-header">
                            <h2>Travel Guide - Purulia District</h2>
                            <button className="close-modal" onClick={closeModal}>X</button>
                        </div>
                        <ul className="en-map">
                            {spots.map((spot) => (
                                <li key={spot.id}>
                                    <button
                                        className="modal-item"
                                        onClick={() => handleMapNavigation(spot)}
                                    >
                                        {spot.name}
                                    </button>
                                </li>
                            ))}
                        </ul>
                    </Modal>
                </div>

                <LoadScript googleMapsApiKey={process.env.REACT_APP_GOOGLE_MAPS_API_KEY}>
                    {spots.length === 0 ? (
                        <div>Loading spots...</div>
                    ) : (
                        <GoogleMap
                            mapContainerStyle={mapContainerStyle}
                            center={center}
                            zoom={zoom}
                        >
                            {/* Markers and Circles for tourist spots */}
                            {spots.map((spot) => (
                                <React.Fragment key={spot.id}>
                                    <Marker
                                        position={{ lat: parseFloat(spot.latitude), lng: parseFloat(spot.longitude) }}
                                        label={spot.name}
                                    />
                                    {/* Circle around each tourist spot */}
                                    <Circle
                                        center={{ lat: parseFloat(spot.latitude), lng: parseFloat(spot.longitude) }}
                                        radius={500} // Adjust radius as needed (500m for example)
                                        options={{
                                            fillColor: 'blue',
                                            fillOpacity: 0.2,
                                            strokeColor: 'blue',
                                            strokeOpacity: 1,
                                            strokeWeight: 1,
                                        }}
                                    />
                                </React.Fragment>
                            ))}
                        </GoogleMap>
                    )}
                </LoadScript>
            </div>
            <Footer />
        </div>
    );
};

export default Map;
