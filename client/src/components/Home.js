// src/components/Home.js
import React from 'react';
import Navbar from './Navbar';  // Import the Navbar component
import { useNavigate } from 'react-router-dom';
import '../styles.css';
import Footer from './Footer';

const Home = () => {
    const navigate = useNavigate();

    const navigateToMap = () => {
        navigate('/encoderz-map'); // Use navigate from React Router v6
    };

    return (
        <div className="home-container">
            <Navbar /> {/* Include the Navbar here */}
            <section className="home-content">
                <h1>Welcome to Your Travel Guide</h1>
                <p>
                    Discover the beauty of Purulia District with our comprehensive travel guide.
                    Our application offers features such as geofencing to help you find nearby tourist spots,
                    along with detailed travel guides to enrich your travel experience.
                </p>
                <p>
                    Find the best routes to explore all the tourist attractions with ease.
                    Click the button below to start your adventure with our Encoderz Map!
                </p>
            </section>
            <button className="navigate-map-btn" onClick={navigateToMap}>
                    Go to Encoderz Map
            </button>
            <div className="footer-unv">
                <Footer />
            </div>
        </div>
        
    );
};

export default Home;
