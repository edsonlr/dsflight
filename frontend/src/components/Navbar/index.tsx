import { ReactComponent as GithubIcon } from 'assets/img/github.svg';
import './styles.css';

function Navbar() {

    return (
        <header>
            <nav className="container">
                <div className="dsflight-nav-content">
                    <h1>DSFlight</h1>
                    <a href="https://github.com/edsonlr/dsflight" target="_blank" rel="noreferrer">
                        <div className="dsflight-contact-container">
                            <GithubIcon />
                            <p className="dsfligth-contact-link">/edsonlr</p>
                        </div>
                    </a>
                </div>
            </nav>
        </header>
    );
}

export default Navbar; 