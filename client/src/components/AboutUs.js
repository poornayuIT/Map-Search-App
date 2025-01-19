// src/components/Home.js
import React from 'react';
import Navbar from './Navbar';  // Import the Navbar component
import '../styles.css';
import Footer from './Footer';

const About = () => {

    return (
        <div className="home-container">
            <Navbar /> {/* Include the Navbar here */}
            <section className="home-content">
                <h1>Welcome to Your Travel Guide</h1>
                <p>
                    Encoderz is an innovative software development company driven by a passion for creating cutting-edge solutions.
                    Led by a visionary leader and supported by a talented team of five skilled developers, Encoderz focuses on delivering high-quality, custom-built software products.
                    With expertise in various technologies and an agile approach to development, the team at Encoderz thrives on collaboration and problem-solving to meet the unique needs of each client.
                    The company’s goal is to empower businesses through scalable, efficient, and innovative software solutions that drive growth and success.
                    The team members are , 
                </p>
                    <div className="team">
                        <ul className="Team-members">
                            <li> Poornayu Mukherjee ( <strong>Leader</strong>) </li>
                            <li> Sougata Das</li>
                            <li> Soumyadeep Roy</li>
                            <li> Shirsikha Dey</li>
                            <li> Snigdha Singha</li>
                        </ul>
                    </div>
            </section>

            <div className="footer-unv">
                <Footer />
            </div>
        </div>

    );
};

export default About;
