export const business = {
  name: "Spigelmyer Plumbing & Heating Inc.",
  shortName: "Spigelmyer Plumbing",
  phone: "(215) 932-9330",
  phoneHref: "tel:+12159329330",
  email: "spigelmyer@gmail.com",
  serviceArea:
    "Serving Montgomery, and parts of Philadelphia, Chester, and Bucks Counties",
  tagline: "Installation, Remodeling, Service & Repair",
  counties: [
    "Montgomery County",
    "Philadelphia County (parts)",
    "Chester County (parts)",
    "Bucks County (parts)",
  ],
};

export const navLinks = [
  { label: "Home", href: "/" },
  { label: "About", href: "/#about" },
  { label: "Services", href: "/#services" },
  { label: "Gallery", href: "/gallery" },
  { label: "Service Area", href: "/#service-area" },
  { label: "Resources", href: "/#resources" },
  { label: "Contact", href: "/#contact" },
];

export const homeHighlights = [
  {
    title: "Bathroom Remodeling",
    text: "If you are interested in a bathroom remodeling project, we have a great deal of experience in this business. We handle the whole process from rip out to finish. We bring in the pros to do the tile, electric, and any other specialty that is needed. The relationships we have built with our subcontractors allows us to coordinate these jobs seamlessly and make sure you get the highest quality job upon completion.",
  },
  {
    title: "Tankless Water Heaters",
    text: "Tankless water heaters have also become a big part of our business in the last few years. This technology has been used in Europe and Asia for years and is now becoming very popular in the US due to increasing energy costs. Tankless systems are good for the environment and offer energy savings. We are certified installers for tankless water heaters and have many years of experience installing them.",
  },
];

export const hero = {
  headline: "Trusted Plumbing & Heating in Plymouth Meeting",
  subheadline: business.serviceArea,
  description:
    "We are a full service plumbing & heating business. From small repairs to full bathroom remodels — quality work you can trust.",
  cta: "Call or Text Us",
  intro: [
    "We are a full service plumbing & heating business. The heating service we offer is for hot water style heating — radiant heat, radiators, baseboard, and boiler installations. We handle all plumbing related services from small jobs such as a toilet repair to a full bathroom remodel.",
    homeHighlights[0].text,
    homeHighlights[1].text,
  ],
};

export const about = {
  title: "About Us",
  paragraphs: [
    "My name is Brian Spigelmyer and I founded Spigelmyer Plumbing & Heating Inc. in 2006. My father, Bill Spigelmyer, started the Spigelmyer name in the business back in 1981. Growing up in the plumbing business, I began working with my father at a very young age. During this time I learned most of the skills I use today and I was able to earn my Master Plumber license in 2007.",
    "Before I started full time in the business, I graduated from the University of Pittsburgh with a business degree. I worked in the corporate world for a year and quickly realized that carrying on the family business would be much more rewarding.",
    "Spigelmyer Plumbing & Heating Inc. takes great pride in the work we do. Every job is done to meet the same high expectations as if we were working on our own house. Our main goal is to provide superior quality, be reliable to our customers, and in turn create the best value in the industry.",
  ],
  highlights: [
    { label: "Family business since", value: "1981" },
    { label: "Company founded", value: "2006" },
    { label: "Master Plumber since", value: "2007" },
  ],
};


export const services = [
  {
    title: "Faucets & Fixtures",
    subtitle: "Sales, Service, Repairs and Installation",
    items: [
      "Toilets",
      "Bidet & Bidet Toilet Seats",
      "Lavatory and Kitchen Faucets",
      "Lavatory, Kitchen and Laundry sinks",
      "Tub and Shower Valves",
      "Shower Heads, Rain Heads, Body Sprays, Hand Sprays",
      "Whirlpool & Soaking Tubs",
      "Shower Bases",
      "Shower Enclosures",
      "Shower Doors",
      "Shower Steam Generators",
    ],
  },
  {
    title: "Pumps",
    items: [
      "Primary Sump Pumps",
      "Water Powered Back-Up Pump Systems",
      "Sewer Ejector Pumps",
      "Laundry Pumps",
      "Hot Water Recirculating Pumps",
      "Condensate Pumps",
    ],
  },
  {
    title: "Water Heaters",
    items: [
      "Gas and Electric Units",
      "Natural Draft, Power Vent and Direct Vent",
      "Residential Tank Style",
      "Residential Tankless",
      "Commercial Tank or Tankless Style",
    ],
  },
  {
    title: "Water Filters",
    items: ["Whole House", "Point of Use", "Ice Maker", "Reverse Osmosis"],
  },
  {
    title: "Garbage Disposers",
    items: [],
  },
  {
    title: "Water Piping & Repairs",
    items: [
      "Increase water pressure throughout the home",
      "Replace rusting galvanized piping with copper",
      "Re-route piping to prevent frozen pipes",
      "Install new water service from city water main to house",
    ],
  },
  {
    title: "Waste Piping & Repairs",
    subtitle: "Soil Stack replacement",
    items: [],
  },
  {
    title: "Gas Piping",
    items: [
      "Leak detection and repairs",
      "Replacement of non-code conforming appliance connectors",
      "New lines for barbecue grills, fireplaces, cooktops",
      "Fireplace log lighters",
      "Fake Log sets",
    ],
  },
  {
    title: "Heating",
    subtitle: "Hot water style heating",
    items: [
      "Boiler replacement",
      "Boiler Servicing",
      "Radiant Heat",
      "Installation or replacement of hot water radiators",
      "High Efficiency boiler installs",
    ],
  },
];

export const serviceCategories = services;

export const resources = [
  {
    name: "Grohe",
    url: "https://www.groheamerica.com",
    description: "Our favorite brand of faucets",
  },
  {
    name: "Delta Faucet",
    url: "https://www.deltafaucet.com",
    description: "Quality faucets and fixtures",
  },
  {
    name: "Kohler",
    url: "https://www.kohler.com",
    description: "Fixtures and plumbing products",
  },
  {
    name: "Gerber",
    url: "https://www.gerberonline.com",
    description: "Toilets",
  },
  {
    name: "Water Commander",
    url: "https://www.watercommander.com",
    description: "Water powered backup sump pumps",
  },
  {
    name: "Ferguson",
    url: "https://www.ferguson.com",
    description: "Local showroom for bathroom remodel plumbing items",
  },
  {
    name: "Addesso MGW",
    url: "https://www.addessomgw.com",
    description: "Local granite, marble, and tile supplier for bathroom remodels",
  },
  {
    name: "D.F. Meyer Inc.",
    url: "https://www.dfmeyerinc.com",
    description: "Custom millwork, historic renovations, and general contracting",
  },
  {
    name: "Energy Star",
    url: "https://www.energystar.gov",
    description: "Information on energy rebates from the government",
  },
  {
    name: "Navien",
    url: "https://www.navienamerica.com",
    description: "Tankless water heaters we recommend",
  },
  {
    name: "Rinnai",
    url: "https://www.rinnai.com",
    description: "Tankless and boiler options, high efficiency",
  },
  {
    name: "Crown Boiler",
    url: "https://www.crownboiler.com",
    description: "The boiler manufacturer we use most often",
  },
];

export const quoteJobTypes = [
  "Bathroom Remodel",
  "Water Heater",
  "Tankless Water Heater",
  "Heating / Boiler",
  "Repair",
  "Other",
];

export const partners = [
  { name: "Crown Boiler", image: "/images/partners/crown.png" },
  { name: "Grohe", image: "/images/partners/grohe.png" },
  { name: "Navien", image: "/images/partners/navien.png" },
  { name: "Rinnai", image: "/images/partners/rinnai.png" },
  { name: "Water Commander", image: "/images/partners/water-commander.png" },
];

export const partnerLogos = partners.map((partner) => ({
  src: partner.image,
  alt: partner.name,
}));

export const heroImage = "/images/gallery/bathrooms/bathroom-11.jpg";

export const galleryCategories = [
  {
    id: "bathrooms",
    title: "Bathrooms",
    description: "Full bathroom remodels, tile, fixtures, and custom shower installations.",
  },
  {
    id: "kitchens",
    title: "Kitchens",
    description: "Kitchen plumbing, faucets, sinks, and fixture upgrades.",
  },
  {
    id: "laundry",
    title: "Laundry Rooms",
    description: "Laundry room plumbing, utility sinks, and drain installations.",
  },
  {
    id: "water-heaters",
    title: "Water Heaters",
    description: "Tank and tankless water heater installs and replacements.",
  },
  {
    id: "other",
    title: "Other Projects",
    description: "Additional plumbing and heating work from recent jobs.",
  },
];
