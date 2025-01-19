import React, { useState, useEffect, useRef } from 'react';
import { Link } from 'react-router-dom';
import logo from './Project.png';
import './Navbar.css'; // Ensure you have this CSS file created

const Navbar = () => {
    // State to control dropdown visibility
    const [dropdownOpen, setDropdownOpen] = useState(false);

    // Ref for dropdown menu
    const dropdownRef = useRef(null);

    // Function to toggle dropdown visibility
    const toggleDropdown = () => {
        setDropdownOpen(!dropdownOpen);
    };

    // Function to close dropdown when clicking outside
    const handleClickOutside = (event) => {
        if (dropdownRef.current && !dropdownRef.current.contains(event.target)) {
            setDropdownOpen(false); // Close dropdown if clicked outside
        }
    };

    // Add event listener to handle clicks outside the dropdown
    useEffect(() => {
        document.addEventListener('mousedown', handleClickOutside);
        return () => {
            document.removeEventListener('mousedown', handleClickOutside); // Clean up the event listener
        };
    }, []);

    return (
        <header>
            <nav>
                <div className="nav-bar">
                    <div className="nav-logo">
                        <img src={logo} alt="Logo" className="logo" />
                        <div className="nav-text">Encoderz</div>
                    </div>
                    
                    <div className="nav-items">
                        <ul>
                            <li><Link to="/">Home</Link></li>
                            <li><Link to="/Aboutus">About Us</Link></li>
                            <li className="services">
                                <Link to="#" onClick={toggleDropdown}>
                                    Services 
                                    <span className="dropdown-arrow">↓</span>
                                </Link>
                                {/* Dropdown Menu */}
                                <ul 
                                    className="dropdown" 
                                    ref={dropdownRef} 
                                    style={{ display: dropdownOpen ? 'flex' : 'none' }}
                                >
                                    <li><Link to="/encoderz-map">Encoderz Map</Link></li>
                                    <li><Link to="#">Project 2</Link></li>
                                    <li><Link to="#">Project 3</Link></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
    );
};

export default Navbar;
