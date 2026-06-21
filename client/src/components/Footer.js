import React, { useState, useEffect } from 'react';  // Make sure to import useEffect
import '../styles.css'; // Ensure this CSS file exists and is properly linked

const Footer = () => {
    const [isVisible, setIsVisible] = useState(false);
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        message: ''
    });
    const [responseMessage, setResponseMessage] = useState('');

    // Scroll animation for the footer
    const checkVisibility = () => {
        const footerElement = document.getElementById('footer');
        const rect = footerElement.getBoundingClientRect();
        if (rect.top <= window.innerHeight) {
            setIsVisible(true); // Make footer visible when it is in view
        }
    };

    const handleInputChange = (e) => {
        const { name, value } = e.target;
        setFormData({
            ...formData,
            [name]: value
        });
    };

    const handleSubmit = async (e) => {
        e.preventDefault(); // Prevent default form submission

        // Send the data to the PHP file using fetch
        try {
            const response = await fetch('http://localhost:8000/footer.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify(formData),
            });

            const result = await response.json();
            setResponseMessage(result.message); // Set response message from PHP

        } catch (error) {
            setResponseMessage("Error submitting form!");
        }
    };

    useEffect(() => {
        window.addEventListener('scroll', checkVisibility);
        return () => {
            window.removeEventListener('scroll', checkVisibility); // Clean up the event listener
        };
    }, []); // Empty dependency array to only run once

    return (
        <footer
            id="footer"
            className={`footer ${isVisible ? 'visible' : ''}`} // Add visible class based on state
        >
            <div className="footer-content">
                {/* Contact Us Section */}
                <div className="contact-us">
                    <h2>Contact Us</h2>
                    <form onSubmit={handleSubmit}>
                        <div className="form-row">
                            <label htmlFor="name">Name:</label>
                            <input
                                type="text"
                                id="name"
                                name="name"
                                value={formData.name}
                                onChange={handleInputChange}
                                placeholder="Your Name"
                            />
                        </div>
                        <div className="form-row">
                            <label htmlFor="email">Email:</label>
                            <input
                                type="email"
                                id="email"
                                name="email"
                                value={formData.email}
                                onChange={handleInputChange}
                                placeholder="Your Email"
                            />
                        </div>
                        <div className="form-row">
                            <label htmlFor="message">Message:</label>
                            <textarea
                                id="message"
                                name="message"
                                value={formData.message}
                                onChange={handleInputChange}
                                placeholder="Your Message"
                                rows="3"
                            ></textarea>
                        </div>
                        <button type="submit">Send</button>
                    </form>
                    <p>{responseMessage}</p>
                </div>

                <div className="social-links">
                    <span className="title-h2"><h2>Follow Us</h2></span>
                    <a href="https://facebook.com" className="social-icon" aria-label="Facebook">
                        <i className="fab fa-facebook-f"></i>
                    </a>
                    <a href="https://twitter.com" className="social-icon" aria-label="Twitter">
                        <i className="fab fa-twitter"></i>
                    </a>
                    <a href="https://instagram.com" className="social-icon" aria-label="Instagram">
                        <i className="fab fa-instagram"></i>
                    </a>
                    <a href="https://linkedin.com" className="social-icon" aria-label="LinkedIn">
                        <i className="fab fa-linkedin-in"></i>
                    </a>
                </div>
                
            </div>
            <p>&copy; 2024 Encoderz Map. All rights reserved.</p>
        </footer>
    );
};

export default Footer;
