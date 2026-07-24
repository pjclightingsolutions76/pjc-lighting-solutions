const phoneDisplay = "480-875-3980";
const phoneLink = "4808753980";
const textMessage =
  "Hi PJC Lighting Solutions, I would like a free quote for permanent track lighting.";

const benefits = [
  {
    title: "Low-Profile Installation",
    text: "A clean, permanent track is installed to blend into your roofline during the day.",
  },
  {
    title: "Built for Arizona",
    text: "Professional installation designed for intense sun, heat, dust, and seasonal weather.",
  },
  {
    title: "App Controlled",
    text: "Change colors, brightness, patterns, and schedules directly from your phone.",
  },
  {
    title: "No Seasonal Setup",
    text: "Enjoy holidays, game days, security lighting, and everyday accent lighting year-round.",
  },
];

const services = [
  "Permanent roofline lighting",
  "Holiday and seasonal lighting",
  "Accent and architectural lighting",
  "Custom colors and programmed scenes",
  "Residential lighting installations",
  "System walkthrough and app setup",
];

const faqs = [
  {
    q: "How much does permanent track lighting cost?",
    a: "Most projects fall between $25 and $50 per linear foot. Final pricing depends on roofline access, total footage, layout, equipment, and installation complexity.",
  },
  {
    q: "Can the track be seen during the day?",
    a: "The track is installed along the roofline and selected to keep the finished installation as clean and low-profile as possible.",
  },
  {
    q: "How are the lights controlled?",
    a: "Your lighting system is controlled through a mobile app, allowing you to change colors, brightness, patterns, timers, and schedules.",
  },
  {
    q: "How long does installation take?",
    a: "Many homes can be completed in one day. Larger or more complex rooflines may require additional time.",
  },
  {
    q: "Do I have to take the lights down?",
    a: "No. The system is permanently installed so you do not have to reinstall holiday lights every year.",
  },
  {
    q: "Do you serve my area?",
    a: "PJC Lighting Solutions serves homeowners throughout Arizona. Contact us with your address to confirm scheduling in your area.",
  },
];

export default function HomePage() {
  const smsHref = `sms:${phoneLink}?&body=${encodeURIComponent(textMessage)}`;

  return (
    <main>
      <header className="site-header">
        <a className="brand" href="#top" aria-label="PJC Lighting Solutions home">
          <img src="/pjc-logo.png" alt="PJC Lighting Solutions logo" />
        </a>

        <nav aria-label="Main navigation">
          <a href="#services">Services</a>
          <a href="#pricing">Pricing</a>
          <a href="#warranty">Warranty</a>
          <a href="#faq">FAQ</a>
        </nav>

        <a className="header-call" href={`tel:${phoneLink}`}>
          Call {phoneDisplay}
        </a>
      </header>

      <section className="hero" id="top">
        <div className="hero-glow hero-glow-one" />
        <div className="hero-glow hero-glow-two" />

        <div className="hero-content">
          <p className="eyebrow">Serving all of Arizona</p>
          <h1>Permanent lighting made for every season.</h1>
          <p className="hero-copy">
            Professional, app-controlled track lighting that gives your home a
            clean custom look for holidays, game days, security, and everyday
            accent lighting.
          </p>

          <div className="hero-actions">
            <a className="button button-primary" href={smsHref}>
              Get a Free Quote
            </a>
            <a className="button button-secondary" href={`tel:${phoneLink}`}>
              Call {phoneDisplay}
            </a>
          </div>

          <div className="hero-points" aria-label="Company highlights">
            <span>20-Year Warranty</span>
            <span>Professional Installation</span>
            <span>App Controlled</span>
          </div>
        </div>

        <div className="hero-logo-card">
          <img src="/pjc-logo.png" alt="PJC Lighting Solutions" />
          <div className="roofline">
            {Array.from({ length: 13 }).map((_, index) => (
              <span key={index} />
            ))}
          </div>
        </div>
      </section>

      <section className="section intro-section">
        <div className="section-heading">
          <p className="eyebrow">Why homeowners choose PJC</p>
          <h2>A permanent upgrade that looks great all year.</h2>
          <p>
            Stop climbing ladders and replacing temporary holiday lights. We
            install a clean system that is ready whenever you open the app.
          </p>
        </div>

        <div className="card-grid four-column">
          {benefits.map((benefit, index) => (
            <article className="feature-card" key={benefit.title}>
              <span className="feature-number">0{index + 1}</span>
              <h3>{benefit.title}</h3>
              <p>{benefit.text}</p>
            </article>
          ))}
        </div>
      </section>

      <section className="section dark-section" id="services">
        <div className="split-layout">
          <div>
            <p className="eyebrow">Our services</p>
            <h2>Custom lighting designed around your home.</h2>
            <p className="section-copy">
              Every roofline is different. Your estimate is based on the
              footage, access, corners, peaks, power location, and the finished
              look you want.
            </p>
            <a className="text-link" href={smsHref}>
              Text photos of your home for an estimate →
            </a>
          </div>

          <div className="service-list">
            {services.map((service) => (
              <div className="service-item" key={service}>
                <span className="check">✓</span>
                <span>{service}</span>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section className="section pricing-section" id="pricing">
        <div className="price-card">
          <div>
            <p className="eyebrow">Pricing expectations</p>
            <h2>$25–$50</h2>
            <p className="price-label">Typical range per linear foot</p>
          </div>

          <div className="price-details">
            <p>
              Your exact price depends on total footage, roofline complexity,
              equipment, access, and installation conditions.
            </p>
            <p>
              Every quote is prepared for your specific home, with the project
              scope and investment clearly explained before work begins.
            </p>
            <a className="button button-primary" href={smsHref}>
              Request Your Estimate
            </a>
          </div>
        </div>
      </section>

      <section className="section warranty-section" id="warranty">
        <div className="warranty-badge">
          <span className="warranty-years">20</span>
          <span>Year Warranty</span>
        </div>

        <div>
          <p className="eyebrow">Long-term confidence</p>
          <h2>Backed by a 20-year warranty.</h2>
          <p className="section-copy">
            Your permanent lighting investment is supported by a 20-year
            warranty. Warranty coverage is subject to the written terms
            included with your proposal and system.
          </p>
        </div>
      </section>

      <section className="section process-section">
        <div className="section-heading">
          <p className="eyebrow">Simple process</p>
          <h2>From estimate to finished installation.</h2>
        </div>

        <div className="process-grid">
          <article>
            <span>1</span>
            <h3>Send Your Address</h3>
            <p>Call or text us with your address and photos of the roofline.</p>
          </article>
          <article>
            <span>2</span>
            <h3>Receive Your Quote</h3>
            <p>We review the home, estimate footage, and prepare your proposal.</p>
          </article>
          <article>
            <span>3</span>
            <h3>Schedule Installation</h3>
            <p>Choose an available installation date that works for you.</p>
          </article>
          <article>
            <span>4</span>
            <h3>Enjoy Your Lights</h3>
            <p>We complete the installation and show you how to use the app.</p>
          </article>
        </div>
      </section>

      <section className="section faq-section" id="faq">
        <div className="section-heading">
          <p className="eyebrow">Frequently asked questions</p>
          <h2>What to know before your installation.</h2>
        </div>

        <div className="faq-list">
          {faqs.map((faq) => (
            <details key={faq.q}>
              <summary>{faq.q}</summary>
              <p>{faq.a}</p>
            </details>
          ))}
        </div>
      </section>

      <section className="final-cta">
        <div>
          <p className="eyebrow">Free estimates</p>
          <h2>Ready to upgrade your home?</h2>
          <p>
            Call or text PJC Lighting Solutions to get started with a custom
            permanent lighting quote.
          </p>
        </div>

        <div className="hero-actions">
          <a className="button button-primary" href={smsHref}>
            Text Us
          </a>
          <a className="button button-secondary" href={`tel:${phoneLink}`}>
            {phoneDisplay}
          </a>
        </div>
      </section>

      <footer>
        <img src="/pjc-logo.png" alt="PJC Lighting Solutions" />
        <div>
          <strong>PJC Lighting Solutions</strong>
          <p>Permanent track lighting serving all of Arizona.</p>
        </div>
        <div className="footer-contact">
          <a href={`tel:${phoneLink}`}>{phoneDisplay}</a>
          <a href="mailto:pjclightingsolutions@gmail.com">
            pjclightingsolutions@gmail.com
          </a>
        </div>
        <p className="copyright">
          © {new Date().getFullYear()} PJC Lighting Solutions. All rights reserved.
        </p>
      </footer>
    </main>
  );
}
:root {
  --navy: #071a47;
  --blue: #028fe8;
  --cyan: #00d6ff;
  --orange: #ff9300;
  --gold: #ffcf00;
  --ink: #071225;
  --muted: #5d6a7c;
  --light: #f4f8fc;
  --white: #ffffff;
  --border: rgba(7, 26, 71, 0.12);
}

* {
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
}

body {
  margin: 0;
  color: var(--ink);
  background: var(--white);
  font-family:
    Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI",
    sans-serif;
}

a {
  color: inherit;
  text-decoration: none;
}

button,
a {
  -webkit-tap-highlight-color: transparent;
}

.site-header {
  position: sticky;
  top: 0;
  z-index: 50;
  min-height: 82px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 24px;
  padding: 12px clamp(20px, 5vw, 76px);
  background: rgba(255, 255, 255, 0.94);
  border-bottom: 1px solid var(--border);
  backdrop-filter: blur(18px);
}

.brand img {
  display: block;
  width: 128px;
  height: 58px;
  object-fit: contain;
}

nav {
  display: flex;
  align-items: center;
  gap: 30px;
  font-size: 0.95rem;
  font-weight: 700;
  color: #344157;
}

nav a:hover {
  color: var(--blue);
}

.header-call {
  padding: 12px 18px;
  color: white;
  border-radius: 999px;
  font-weight: 800;
  background: linear-gradient(135deg, var(--blue), #0055b8);
  box-shadow: 0 10px 30px rgba(0, 119, 214, 0.22);
}

.hero {
  position: relative;
  overflow: hidden;
  min-height: 720px;
  display: grid;
  grid-template-columns: 1.12fr 0.88fr;
  align-items: center;
  gap: clamp(34px, 6vw, 90px);
  padding: 82px clamp(22px, 7vw, 110px) 96px;
  color: white;
  background:
    linear-gradient(120deg, rgba(0, 143, 232, 0.08), transparent 45%),
    radial-gradient(circle at 80% 20%, rgba(0, 214, 255, 0.18), transparent 29%),
    linear-gradient(135deg, #030b22 0%, #071a47 54%, #042b5c 100%);
}

.hero::after {
  content: "";
  position: absolute;
  right: -150px;
  bottom: -180px;
  width: 600px;
  height: 600px;
  border: 2px solid rgba(0, 214, 255, 0.14);
  border-radius: 50%;
}

.hero-glow {
  position: absolute;
  border-radius: 50%;
  filter: blur(70px);
  opacity: 0.34;
  pointer-events: none;
}

.hero-glow-one {
  width: 280px;
  height: 280px;
  left: -80px;
  top: 90px;
  background: var(--blue);
}

.hero-glow-two {
  width: 250px;
  height: 250px;
  right: 8%;
  bottom: 8%;
  background: var(--orange);
  opacity: 0.18;
}

.hero-content,
.hero-logo-card {
  position: relative;
  z-index: 2;
}

.eyebrow {
  margin: 0 0 14px;
  color: var(--cyan);
  font-size: 0.78rem;
  font-weight: 900;
  letter-spacing: 0.17em;
  text-transform: uppercase;
}

.hero h1,
.section h2,
.final-cta h2 {
  margin: 0;
  letter-spacing: -0.045em;
  line-height: 0.98;
}

.hero h1 {
  max-width: 780px;
  font-size: clamp(3.1rem, 6.5vw, 6.6rem);
}

.hero-copy {
  max-width: 680px;
  margin: 26px 0 0;
  color: rgba(255, 255, 255, 0.76);
  font-size: clamp(1.05rem, 1.5vw, 1.3rem);
  line-height: 1.7;
}

.hero-actions {
  display: flex;
  flex-wrap: wrap;
  gap: 14px;
  margin-top: 34px;
}

.button {
  display: inline-flex;
  min-height: 52px;
  align-items: center;
  justify-content: center;
  padding: 14px 23px;
  border: 1px solid transparent;
  border-radius: 999px;
  font-weight: 900;
  transition:
    transform 160ms ease,
    box-shadow 160ms ease,
    border-color 160ms ease;
}

.button:hover {
  transform: translateY(-2px);
}

.button-primary {
  color: #09132c;
  background: linear-gradient(135deg, var(--gold), var(--orange));
  box-shadow: 0 14px 36px rgba(255, 147, 0, 0.28);
}

.button-secondary {
  color: white;
  border-color: rgba(255, 255, 255, 0.28);
  background: rgba(255, 255, 255, 0.06);
}

.hero-points {
  display: flex;
  flex-wrap: wrap;
  gap: 14px 24px;
  margin-top: 34px;
  color: rgba(255, 255, 255, 0.72);
  font-size: 0.91rem;
  font-weight: 750;
}

.hero-points span::before {
  content: "•";
  margin-right: 9px;
  color: var(--cyan);
}

.hero-logo-card {
  min-height: 460px;
  display: grid;
  place-items: center;
  padding: 34px;
  border: 1px solid rgba(255, 255, 255, 0.14);
  border-radius: 34px;
  background:
    linear-gradient(145deg, rgba(255, 255, 255, 0.14), rgba(255, 255, 255, 0.035));
  box-shadow:
    inset 0 1px 0 rgba(255, 255, 255, 0.16),
    0 32px 80px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(16px);
}

.hero-logo-card img {
  width: min(100%, 550px);
  max-height: 330px;
  object-fit: contain;
  border-radius: 26px;
  mix-blend-mode: screen;
}

.roofline {
  width: 88%;
  height: 8px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-top: 20px;
  border-radius: 999px;
  background: #0b1127;
  box-shadow: 0 0 20px rgba(0, 214, 255, 0.35);
}

.roofline span {
  width: 13px;
  height: 13px;
  border-radius: 50%;
  background: #fff5bc;
  box-shadow:
    0 0 8px #ffffff,
    0 0 18px #ffcc00,
    0 0 28px #ff8a00;
}

.section {
  padding: 110px clamp(22px, 7vw, 110px);
}

.section-heading {
  max-width: 780px;
  margin-bottom: 48px;
}

.section h2,
.final-cta h2 {
  font-size: clamp(2.35rem, 4vw, 4.65rem);
}

.section-heading > p:last-child,
.section-copy {
  color: var(--muted);
  line-height: 1.75;
  font-size: 1.08rem;
}

.card-grid {
  display: grid;
  gap: 20px;
}

.four-column {
  grid-template-columns: repeat(4, 1fr);
}

.feature-card {
  min-height: 270px;
  padding: 30px;
  border: 1px solid var(--border);
  border-radius: 24px;
  background: white;
  box-shadow: 0 16px 42px rgba(22, 51, 89, 0.07);
}

.feature-number {
  display: inline-grid;
  width: 48px;
  height: 48px;
  place-items: center;
  color: white;
  border-radius: 14px;
  font-weight: 900;
  background: linear-gradient(135deg, var(--blue), var(--navy));
}

.feature-card h3,
.process-grid h3 {
  margin: 26px 0 12px;
  font-size: 1.27rem;
}

.feature-card p,
.process-grid p {
  margin: 0;
  color: var(--muted);
  line-height: 1.68;
}

.dark-section {
  color: white;
  background:
    radial-gradient(circle at 90% 10%, rgba(0, 214, 255, 0.12), transparent 25%),
    linear-gradient(135deg, #05122f, #071a47);
}

.split-layout {
  display: grid;
  grid-template-columns: 1fr 0.9fr;
  gap: clamp(45px, 9vw, 120px);
  align-items: center;
}

.dark-section .section-copy {
  color: rgba(255, 255, 255, 0.7);
}

.text-link {
  display: inline-block;
  margin-top: 20px;
  color: var(--cyan);
  font-weight: 900;
}

.service-list {
  display: grid;
  gap: 12px;
}

.service-item {
  display: flex;
  align-items: center;
  gap: 15px;
  padding: 18px 20px;
  border: 1px solid rgba(255, 255, 255, 0.11);
  border-radius: 16px;
  color: rgba(255, 255, 255, 0.86);
  background: rgba(255, 255, 255, 0.055);
}

.check {
  display: inline-grid;
  flex: 0 0 auto;
  width: 28px;
  height: 28px;
  place-items: center;
  color: #06122d;
  border-radius: 50%;
  font-weight: 950;
  background: linear-gradient(135deg, var(--cyan), #c8fbff);
}

.pricing-section {
  background: var(--light);
}

.price-card {
  display: grid;
  grid-template-columns: 0.88fr 1.12fr;
  gap: clamp(40px, 9vw, 120px);
  align-items: center;
  padding: clamp(34px, 6vw, 74px);
  border: 1px solid var(--border);
  border-radius: 34px;
  background: white;
  box-shadow: 0 24px 70px rgba(15, 48, 86, 0.1);
}

.price-card h2 {
  font-size: clamp(4.5rem, 9vw, 8.8rem);
  color: var(--navy);
}

.price-label {
  margin: 4px 0 0;
  color: var(--orange);
  font-weight: 900;
}

.price-details p {
  color: var(--muted);
  line-height: 1.75;
}

.price-details .button {
  margin-top: 14px;
}

.warranty-section {
  display: grid;
  grid-template-columns: 0.55fr 1.45fr;
  gap: clamp(38px, 8vw, 110px);
  align-items: center;
}

.warranty-badge {
  aspect-ratio: 1;
  display: grid;
  place-items: center;
  align-content: center;
  padding: 30px;
  color: white;
  border-radius: 50%;
  text-align: center;
  font-weight: 900;
  text-transform: uppercase;
  letter-spacing: 0.11em;
  background:
    radial-gradient(circle at 35% 20%, rgba(255, 255, 255, 0.28), transparent 25%),
    linear-gradient(145deg, var(--blue), var(--navy));
  box-shadow:
    0 0 0 12px rgba(0, 143, 232, 0.1),
    0 30px 70px rgba(7, 26, 71, 0.24);
}

.warranty-years {
  display: block;
  font-size: clamp(4.5rem, 9vw, 8rem);
  line-height: 0.9;
  letter-spacing: -0.08em;
}

.process-section {
  background: var(--light);
}

.process-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 18px;
}

.process-grid article {
  padding: 26px;
  border-top: 4px solid var(--blue);
  border-radius: 0 0 22px 22px;
  background: white;
  box-shadow: 0 12px 34px rgba(16, 45, 82, 0.07);
}

.process-grid article > span {
  color: var(--orange);
  font-size: 2rem;
  font-weight: 950;
}

.faq-section {
  display: grid;
  grid-template-columns: 0.75fr 1.25fr;
  gap: clamp(45px, 8vw, 100px);
}

.faq-list {
  border-top: 1px solid var(--border);
}

details {
  border-bottom: 1px solid var(--border);
}

summary {
  position: relative;
  padding: 24px 44px 24px 0;
  cursor: pointer;
  list-style: none;
  font-size: 1.08rem;
  font-weight: 850;
}

summary::-webkit-details-marker {
  display: none;
}

summary::after {
  content: "+";
  position: absolute;
  right: 4px;
  top: 20px;
  color: var(--blue);
  font-size: 1.6rem;
}

details[open] summary::after {
  content: "–";
}

details p {
  margin: -8px 0 24px;
  padding-right: 34px;
  color: var(--muted);
  line-height: 1.72;
}

.final-cta {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 35px;
  margin: 0 clamp(22px, 7vw, 110px) 90px;
  padding: clamp(34px, 5vw, 60px);
  color: white;
  border-radius: 30px;
  background:
    radial-gradient(circle at 85% 20%, rgba(255, 147, 0, 0.22), transparent 30%),
    linear-gradient(135deg, #071a47, #043a75);
}

.final-cta > div:first-child {
  max-width: 720px;
}

.final-cta p:not(.eyebrow) {
  color: rgba(255, 255, 255, 0.72);
  line-height: 1.65;
}

.final-cta .hero-actions {
  flex: 0 0 auto;
  margin-top: 0;
}

footer {
  display: grid;
  grid-template-columns: auto 1fr auto;
  align-items: center;
  gap: 24px;
  padding: 42px clamp(22px, 7vw, 110px);
  color: rgba(255, 255, 255, 0.76);
  background: #030919;
}

footer img {
  width: 110px;
  height: 70px;
  object-fit: contain;
  border-radius: 10px;
}

footer strong {
  color: white;
}

footer p {
  margin: 5px 0 0;
}

.footer-contact {
  display: grid;
  gap: 8px;
  text-align: right;
}

.footer-contact a:hover {
  color: var(--cyan);
}

.copyright {
  grid-column: 1 / -1;
  padding-top: 22px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  text-align: center;
  font-size: 0.85rem;
}

@media (max-width: 1050px) {
  nav {
    display: none;
  }

  .hero {
    grid-template-columns: 1fr;
    padding-top: 68px;
  }

  .hero-logo-card {
    min-height: 380px;
  }

  .four-column,
  .process-grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .faq-section {
    grid-template-columns: 1fr;
  }

  .faq-section .section-heading {
    margin-bottom: 0;
  }
}

@media (max-width: 760px) {
  .site-header {
    min-height: 72px;
    padding: 8px 16px;
  }

  .brand img {
    width: 92px;
    height: 52px;
  }

  .header-call {
    padding: 11px 13px;
    font-size: 0.82rem;
  }

  .hero {
    min-height: auto;
    padding: 62px 20px 72px;
  }

  .hero h1 {
    font-size: clamp(2.8rem, 14vw, 4.2rem);
  }

  .hero-actions {
    flex-direction: column;
  }

  .hero-actions .button {
    width: 100%;
  }

  .hero-logo-card {
    min-height: 300px;
    padding: 20px;
    border-radius: 24px;
  }

  .section {
    padding: 78px 20px;
  }

  .four-column,
  .process-grid,
  .split-layout,
  .price-card,
  .warranty-section {
    grid-template-columns: 1fr;
  }

  .feature-card {
    min-height: auto;
  }

  .price-card {
    padding: 32px 24px;
  }

  .warranty-badge {
    width: min(88vw, 340px);
    justify-self: center;
  }

  .faq-list {
    margin-top: 15px;
  }

  .final-cta {
    display: block;
    margin: 0 20px 65px;
    padding: 34px 24px;
  }

  .final-cta .hero-actions {
    margin-top: 26px;
  }

  footer {
    grid-template-columns: 1fr;
    text-align: center;
  }

  footer img {
    justify-self: center;
  }

  .footer-contact {
    text-align: center;
import "./globals.css";

export const metadata = {
  title: "PJC Lighting Solutions | Permanent Track Lighting Arizona",
  description:
    "Professional permanent track lighting installation throughout Arizona. App-controlled, low-profile lighting backed by a 20-year warranty.",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
