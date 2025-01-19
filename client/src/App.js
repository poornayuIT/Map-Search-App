// src/App.js
import React, { useState, useEffect } from 'react';
import Home from './components/Home';
import Map from './components/Map';
import Footer from './components/Footer';
import About from './components/AboutUs';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';

const App = () => {
    const [spots, setSpots] = useState([]);

    useEffect(() => {
        const sampleSpots = [
            { id: 1, name: 'Spot 1', latitude: 23.685, longitude: 86.257 },
            { id: 2, name: 'Spot 2', latitude: 23.689, longitude: 86.258 },
            // Add more spots as needed
        ];
        setSpots(sampleSpots);
    }, []);

    return (
        <Router>
            <Routes>
                <Route path="/" element={<Home />} />
                <Route 
                    path="/encoderz-map" 
                    element={<Map 
                        spots={spots} 
                        center={{ lat: 23.68, lng: 86.25 }} 
                        zoom={10} 
                        userLocation={{ lat: 23.69, lng: 86.26 }} 
                    />}
                />
                <Route path="/contact-us" element={<Footer />} />
                <Route path="/Aboutus" element={<About />} />
            </Routes>
        </Router>
    );
};

export default App;
