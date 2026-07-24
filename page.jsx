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