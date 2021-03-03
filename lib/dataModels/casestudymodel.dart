class DataCaseStudy {
  final int pos;
  final String name,
      resultDesc,
      caseimg,
      aboutcompanyDesc,
      challengeDesc,
      solutionDesc,
      bgcolor;

  final List<String> images;

  DataCaseStudy(
      {this.pos,
      this.name,
      this.resultDesc,
      this.caseimg,
      this.aboutcompanyDesc,
      this.challengeDesc,
      this.solutionDesc,
      this.images,
      this.bgcolor});
}

List<DataCaseStudy> casestudy = [
//AVIVA Life Insurance
  DataCaseStudy(
    pos: 1,
    bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/aviva.png',
    name: "AVIVA Life Insurance Co. India Ltd.",
    aboutcompanyDesc:
        "Aviva is a British Multinational Insurance company headquartered in London, United Kingdom. It has approximately about 33 million customers across 16 countries. In the United Kingdom, Aviva is the largest general insurer and a leading life pension provider. AVIVA Life Insurance Co. India Ltd. is of the Indian JV group and provides various types of Insurances and other solutions in India.",
    challengeDesc:
        "The company needs a solution which not only assists in protecting data but can also be used under any of the compliance acts or can take proactive action against any possible fraud or leak of information.",
    solutionDesc:
        "Aviva is a British Multinational Insurance company headquartered in London, United Kingdom. It has approximately about 33 million customers across 16 countries. In the United Kingdom, Aviva is the largest general insurer and a leading life pension provider. AVIVA Life Insurance Co. India Ltd. is of the Indian JV group and provides various types of Insurances and other solutions in India.",
    resultDesc:
        "The customer was able to achieve all his compliance requirements and also monitor the information flow. This was one of the strong tools for their cyber security team (SOC).",
  ),

  //IL&FS Securities Services Ltd
  DataCaseStudy(
    pos: 2,
    bgcolor: 'Colors.red[100]',
    caseimg: 'assets/casestudy/ilfs.png',
    name: "IL&FS Securities Services Ltd",
    aboutcompanyDesc:
        "IL&FS Securities Services Ltd., (ISSL) was incorporated in FY 2007 as a subsidiary of Infrastructure Leasing and Financial Services Ltd., (IL&FS). IL&FS is an AAA rated financial institution of repute and is one of India's leading Infrastructure development and finance company. Though a separate Company since FY 2007, ISSL was previously operating as a strategic business unit of IL&FS since FY 1995, providing support functions towards security market related services.\nWith the benefit of experience, ISSL has now emerged as a reputable service provider, with a critical mass of clients and diverse product lines supporting its business growth. It holds the leadership position in F&O Clearing and new products such as broking back office, brokers' broker and ESOP funding.",
    challengeDesc:
        "The customer was looking for a solution for his HQ and all other branches to protect his data from internet attacks and was also looking for a centralized management for all his devices. In addition to that, he was looking for secured, wireless and reporting functionalities.",
    solutionDesc:
        "Insight has supplied and deployed Fortinet Security Spectrum which covers FortiAnalyser VM, Forti manager, Fortigate NGFW (at HQ and branches) and wireless access points across the locations.\nAfter deployment of the entire security architecture, the customer got a centralized view of all his security threats and was able to push all the policies  centrally from one location. Centralized multi-level reporting capability helped the IT as well as the security team to mitigate the risks in advance. Insight’s TCT- Security Vulnerability Assessment team has given him proactive visibility of cyber threats.\nThis achieved the objective of consolidating the view across Fortinet devices throughout the organization with real-time alerts that expedite the discovery, investigation, and response to incidents even as they’re happening. With action-oriented views and deep drill-down capabilities, FortiAnalyser gives organizations a critical insight into threats across the entire attack surface. The project scope included pre and post implementation of threat & vulnerability assessment.",
    resultDesc:
        "The customer has not only got his cybersecurity visibility, control and monitor but also was able to deploy wireless connectivity at each office without investing in the controller. His investment in NGFW has given him better features and control without investing on additional controller. He could achieve all his business needs in a simplified and better TCO.",
  ),

  //National Institute of Securities Markets
  DataCaseStudy(
    pos: 3,bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/nism.png',
    name: "National Institute of Securities Markets",
    aboutcompanyDesc:
        "The National Institute of Securities Markets (NISM) is a public trust established in 2006 by the Securities and Exchange Board of India (SEBI), the regulator of the securities markets in India. The institute carries out a wide range of capacity building activities at various levels aimed at enhancing the quality standards of and increase the participation in the securities markets. The institute’s six schools of excellence and the National Center for Financial Education works in synergy towards professionalized securities markets.",
    challengeDesc:
        "The customer was looking for solutions for his upcoming campus near Patalganga where basic, advance and executive financial courses are going to be held. They were looking for solutions which could protect the perimeter from not only the internet perspective, but also control or keep an eye on the utilization of bandwidth based on categorization of users like student, guest, employee, consultant, visiting faculty or public event.",
    solutionDesc:
        "Insight have supplied and deployed solutions for Integrated Security at NISM. The Fortinet Firewall NGFW solution was set up for protection against known exploits, malware and malicious websites that use continuous threat. Insight has deployed the entire solution with certified engineers and deployed the security policies of NISM, which protects against unknown attacks using dynamic analysis and provides automated mitigation to stop targeted attacks. The project scope included pre and post implementation of threat & vulnerability assessment. We have even supplied and deployed the Analyzer in order to have a granular level of reporting and pattern of threats.\nInsight’s TCT- Security Solution Framework has provided comprehensive threat protection for NISM’s business needs, including intrusion prevention, web filtering, anti-malware and application control, they face a major complexity hurdle while managing these point products with no integration and lack of visibility.",
    resultDesc:
        "Customers today have more then 1000+ users with variety of users based. Our security audit services were offered to understand the vulnerability and take proactive measures. With our integration, TCT services users from LAN and Wireless can seamless access internet based on the profile or access. Our centralized monitoring and reporting solution helps the client to create the required reporting as per his business needs.\nThe customer has not only achieved their security objectives by applying Insight’s supplied and deployed solutions, but also achieved decrypting the attacks that were targeting the institute.",
  ),

  //Directorate of Construction, Services & Estate Management
  DataCaseStudy(
    pos: 4, bgcolor: 'Colors.red[100]',
    caseimg: 'assets/casestudy/dcsem.png',
    name: "Directorate of Construction, Services & Estate Management",
    aboutcompanyDesc:
        "The Directorate of Construction, Services & Estate Management is currently involved in Planning, Designing, Engineering, Execution, Testing and Commissioning of Civil, Public health, Electrical, Air-conditioning and ventilation works for Housing, Hostels, Schools, Hospitals, Laboratories and various public buildings for units of Department of Atomic Energy including aided institutions and other department such as Science / Electronics, Bio-technology etc. In addition, the Directorate is responsible for the operations and maintenance of all electrical, mechanical, civil, estate management and security services for the housing colony of DAE at Anushaktinagar and in different part of Mumbai City.",
    challengeDesc:
        "The customer was coming up with a conventional hall which is going to be used for hosting events such as community gatherings and also by domestic and international delegates to have discussions on various aspects of their businesses. Security was the primary concern and the customer was looking for a solution which can help them achieve the same.",
    solutionDesc:
        "Insight has successfully supplied and deployed the solutions for Integrated Security at DCSEM. Fortinet NGFW Protection is known for its protection against exploits, malware and malicious websites using continuous threat intelligence provided by FortiGuard Labs security services. Insight has deployed the entire solution with certified engineers and also organized the security policies of DCSEM that protects against unknown attacks using dynamic analysis and automated mitigation to stop targeted attacks. Insight’s TCT- Security Solution Framework has provided comprehensive threat protection for DCSEM’s business needs, including intrusion prevention, web filtering, and anti-malware and application control. They face a major complexity hurdle while managing these point products with no integration and lack of visibility.",
    resultDesc:
        "The Customer has achieved his business objective of security at perimeter. Insight TCT- Deployment services have integrated the solution with LAN, Wireless and NAC solutions, which have given protection against threats. He was able to get complete visibility of the utilization of his network on the go.\nIn addition to that, our TCT- Security framework services helped him to manage, monitor and change the management policy very easily.\nDSEM has not only achieved its security objective by Insight’s supplied and deployed solution but also achieved decrypting the attacks that were targeting the organization.",
  ),
  //One of the regularity authority
  DataCaseStudy(
    pos: 5,bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/oneofthe.jpg',
    name: "One of the regularity authority",
    aboutcompanyDesc:
        "The Preamble of our customer, who is one of the regulatory bodies, describes the basic functions of protecting the interests of investors in securities and promoting the development of, as well as regulating the securities market and for matters connected therewith or incidental thereto.",
    challengeDesc:
        "The customer was building solutions for DC, DR and nearline DR. He was looking for an IPS solution with advance zero-day protection which can be managed by a single console while the equipment is at a different location.",
    solutionDesc:
        "Insight has supplied and deployed the Tipping Point at DC and DR with zero-day attack solutions with Insight’s TCT- Security Vulnerability test and framework to manage cyber security threats. This helps them to protect their web and application servers from intrusion and malware. Project implementation included webservers, DB servers, email servers, backup servers, domain servers etc. Our Professional Services Team has deployed the solution successfully at Mumbai and Chennai along with a comprehensive security policy as per CERT guidelines. And they were able to provide protection from threats whose signatures don’t exist because of Insight TCT- security solutions and frame work. The total work was not only for supply and deployment, but also to provide and manage services from Insight’s MangeIT team, and maintain them for 5 years with Insight’s security assessment services. This also covers the penetration test and reports conducted on a quarterly basis. A threat perception report is carried out every quarter so that the customer can take further action and implement solution/s for newer threats.",
    resultDesc:
        "There have been many security penetrations post the implementations, but the customer was able to act manually and even in an automated way to suit business needs.",
  ),
  //Tata Memorial Center
  DataCaseStudy(
    pos: 6, bgcolor: 'Colors.red[100]',
    caseimg: 'assets/casestudy/tata.png',
    name: "Tata Memorial Center",
    aboutcompanyDesc:
        "The Tata Memorial Hospital is situated in Parel, Mumbai, in India. It is a specialist Cancer Treatment and Research Centre, closely associated with the Advanced Centre for Treatment, Research and Education in Cancer (ACTREC). It is also the national comprehensive Cancer Centre for the prevention, treatment, education and research in cancer and is recognized as one of the leading cancer centres in this part of the world. It’s a fully funded Grant-in-Aid Institution of Department of Atomic Energy, which also oversees the administration of institute since 1962.",
    challengeDesc:
        "Tata Memorial Hospital have over 1000+ patients daily in OPD plus there are more number of people visit the facility for various ongoing treatments or consultancy. Internet services are a must have business requirement but at the same time they have experienced attacks and so, they are looking for a proxy base solution which can protect them and assist in having a control usage with reporting.",
    solutionDesc:
        "Insight has supplied and deployed the Bluecoat solution at TMH to achieve a complete application visibility, acceleration and security. To support the ADN, ProxySG delivers a scalable proxy platform architecture to secure web communications and accelerate the delivery of business applications. ProxySG enables flexible policy controls over content, users, applications and protocols and is the choice of more than 80% of the Fortune Global 500.\nGet world-class threat protection backed by Bluecoat's real-time WebPulse technology which has more than 75 million users. ProxySG provides complete control over all web traffic with robust features that include user authentication, web filtering, data loss prevention, inspection and validation of SSL-encrypted traffic, content caching, bandwidth management, stream-splitting and more.\nProject implementation included web servers, DB servers, email servers, backup servers, domain servers etc.",
    resultDesc:
        "The customer has achieved his business objective not only in a secure manner but also was able to implement a new policy on the go as when required with Insight’s MangeIT services.",
  ),
  //Indias one of the No. 1 local search engine
  DataCaseStudy(
    pos: 7,bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/localengine.jpg',
    name: "Indias one of the No. 1 local search engine",
    aboutcompanyDesc:
        "India's No.1 local search engine provides comprehensive updated information on all B2B and B2C Products and Services. Its services are available in all major Indian cities including Mumbai, Delhi, Bangalore, Hyderabad, Chennai, Pune, Kolkata, Ahmedabad and many more.",
    challengeDesc:
        "The customer was evaluating solutions to protect his endpoints from basic antiviruses. A solution that should load the endpoint on a very light foot print and not impact performance.",
    solutionDesc:
        "Insight has supplied & deployed Security Data Protection Solution for the customer to achieve prevention from Anti Ransom Ware, advance DNA scan; behavioral detection system to protect the network from today’s advanced threats. It offers a wide range of advanced features under a single platform to enable organizations to have complete security and enforce control. The total number of users across India is 1300+, spread across 9+ cities in India.",
    resultDesc:
        "The customer has replaced his existing solution with Insight’s TCT Security consultant. He has not only achieved his business need but also has achieved procuring the Anti Ransom ware and another advance endpoint protection.",
  ),
//top2 Entertainment Media house in India
  DataCaseStudy(
    pos: 8, bgcolor: 'Colors.red[100]',
    caseimg: 'assets/casestudy/top2.jpg',
    name: "One of the TOP 2 Entertainment Media house in India",
    aboutcompanyDesc:
        "They connect with and entertain over 1.3 billion people every day. They are a Global Media and Entertainment conglomerate with a presence across television broadcasting, movies, music, live entertainment and digital businesses.",
    challengeDesc:
        "The customer was consolidating all his multi-locations in Mumbai to one building to build his corporate and head office. They have a diversified business and each business required different network needs. They wanted to have a common IT infra service for all divisions, at the same time they wanted to have options from roaming to sharing data in a secured manner.",
    solutionDesc:
        "Insight has supplied and deployed Extreme Networks NAC solution for 1900+ network endpoints. We have deployed one of the leading tools to achieve his business objective with our professional services that has global deployment capabilities. We have deployed a solution which can work as an independent solution, which means the customer had been switching from wireless to different vendors. Our solution was mature enough to understand the user’s profile when he moves from the switched port to the network port.\nThe customer got the best advantage of NAC’s business-oriented visibility and control over individual users and applications in multi-vendor infrastructures. NAC protects existing infrastructure investments since it does not require the deployment of new switching hardware or that agents be installed on all end systems. It performs as a multi-user, multi-method authentication, vulnerability assessment and assisted remediation. It offers the flexibility to choose whether to or not to restrict access for guests/contractors to public Internet services only—and how to handle authenticated internal users/devices that do not pass the security posture assessment. Another direct benefit is the detection of an infected endpoint before it can join the network and affect other machines. The project scope included pre and post implementation of threat & vulnerability assessment.",
    resultDesc:
        "The customer has achieved his business objective and scaled up to 2400+ endpoint in very short span. The company got a centralized policy enforcement tool which has increased their IT productivity. They are able to create reports as per the respective business compliance in real time.\nAdditionally, the customer has benefited from the NAC solution that the endpoints policy has kept up-to-date continuously. Insight’s TCT security team has made the automation process so less of human intervention and easily adaptable to non-technical users at each business house.\nIt's hard to deny that a NAC implementation can be challenging, but when used correctly, it's a very effective tool in any security-in-depth strategy.",
  ),

//exem bank
  DataCaseStudy(
    pos: 9,bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/eximbank.jpg',
    name: "Export - Import Bank of India",
    aboutcompanyDesc:
        "Export-Import Bank of India is the premier export finance institution in India, established in 1982 under Export-Import Bank of India Act 1981. Since its inception, Exim Bank of India has been both a catalyst and a key player in the promotion of cross border trade and investment. Commencing operations as a purveyor of export credit, like other export credit agencies in the world, Exim Bank India has, over the period, evolved into an institution that plays a major role in partnering Indian industries, particularly the small and medium enterprises, in their globalization efforts, through a wide range of products and services offered at all stages of the business cycle, starting from import of technology and export product development to export production, export marketing, pre-shipment and post-shipment and overseas investment.",
    challengeDesc:
        "Export-Import Bank of India is the premier export finance institution in India, established in 1982 under Export-Import Bank of India Act 1981. Since its inception, Exim Bank of India has been both a catalyst and a key player in the promotion of cross border trade and investment. Commencing operations as a purveyor of export credit, like other export credit agencies in the world, Exim Bank India has, over the period, evolved into an institution that plays a major role in partnering Indian industries, particularly the small and medium enterprises, in their globalization efforts, through a wide range of products and services offered at all stages of the business cycle, starting from import of technology and export product development to export production, export marketing, pre-shipment and post-shipment and overseas investment.",
    solutionDesc:
        "Insight's TCT- Security services enabled the customer to meet their business requirements. Advanced Threat Protection Solution from Symantec was deployed at EXIM Bank for protection to uncover advanced threats across endpoints, network, email, and web traffic across all of India. The project scope included pre and post implementation of threat & vulnerability assessment. The project also included integration with other IT security apparatus for reporting etc.",
    resultDesc:
        "The customer has achieved his business objective and our solutions assisted in covering up the vulnerability and he could able to take measures proactively.",
  ),
//ambey valley city
  DataCaseStudy(
    pos: 10, bgcolor: 'Colors.red[100]',
    caseimg: 'assets/casestudy/aambeyvalley.jpg',
    name: "Aamby Valley City",
    aboutcompanyDesc:
        "Sahara India has developed an iconic state-of-the-art facility named at ‘Parinee Crescendo, BKC’ for its corporate operations in Mumbai. This facility is envisaged to offer future proof IT facilities to its tenants / users. ‘Go green’ approach is the primary agenda for Sahara Next who is an Offshore Development & Information Technology outsourcing company providing services and solutions to varied enterprises worldwide.",
    challengeDesc:
        "The concern is to design, supply, install, test and commission the unify network infrastructure i.e. Structured Cabling System that shall be able to support all telecommunication applications (Voice, Data, Building Control Systems, Security, Alarms, etc.), Unified communication, Self-defendable, scalable, agile and redundant Switching Infrastructure, Seamless wireless with mobility of all BYOD, Voice, data and video infrastructure with unified Security solutions secured within the facility.",
    solutionDesc:
        "Insight has designed and implemented datacentres of 18 Server and Network rack with all the management equipment as per Tier 3 standards. They have also successfully executed structure cabling for 4000 drops with OM4 Backbone and deployed an exact number of 2500 CISCO IP phones with UC functionality configured and computer connected. The entire network is highly resilient and fault tolerant using Multi-chassis ether channel (M-LAG) and Voice grade QoS on Edge, core and wireless.",
    resultDesc:
        "Insight has successfully executed the structure cabling for BYOD resulting in the entire cable network being highly resilient and fault tolerant. Insight has also successfully executed structure cabling for 4000 drops with OM4 Backbone and deployed an exact number of 2500 CISCO IP phones with UC functionality configured and computer connected.",
  ),
//big fm
  DataCaseStudy(
    pos: 11,bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/bigfm.jpg',
    name: "92.7 BIG FM",
    aboutcompanyDesc:
        "BIG 92.7 FM is poised to create history with its pan India presence, spanning across 45 cities, 1000 towns and 50,000 villages to reach 200 million Indians across the length and breadth of the country. The company plans to take FM radio as a medium of entertainment not only to the key metros, but also to virgin markets that have never before experienced this medium of entertainment.\nTHE INFRASTRUCTURE:-\nBIG 92.7 FM will not just be a big brand, but a big station as well. With an investment of Rs. 400 crore dedicated to Transmission equipment, infrastructure and licensing, the proposed network will be the largest ever. The IP protocol technology being utilized for BIG 92.7 FM has been sourced from AXIA, USA making this station amongst the first to utilize such superior gear in Asia.\nBIG 92.7 FM will bring to you 24x7 unique entertainment from a highly advanced and state-of-the-art radio broadcast technology via transmitters with web based remote management capability, hot swappable power supply and power amplifier with controller card redundancy.",
    challengeDesc:
        "Big 92.7 FM had got the license of more than 45 Radio stations across the nation. These include cities based on class A, B, C and also in the interior parts of India. They needed to activate all the stations before the deadline, and every station’s infrastructure plays a key role.",
    solutionDesc:
        "INSIGHT was approached for designing a solution and turnkey the whole project. INSIGHT comes from a Strong System Integration background and has key affiliations with industry leaders like HP, IBM, Microsoft and Cisco, having designed solutions in line of business requirements for its clients. Key infrastructure technologies were deployed in less than 8 months which are given below.\nServer solution - As every station required servers which should be available 24x7 all the 365 days, we have supplied and integrated more than 280 number of HP DL servers with required add-ons. They are highly dense, expandable, and scalable servers with good performance and open standards.\nStorage Solution - Being a media application, storage is the key component of the entire solution. They were looking for a solution which is highly available and extensible with minimum risk of disruptions, as it will be live broadcasted. We have supplied and integrated the HP NAS Solution based on the Microsoft storage.\nDatabase Solution - We have supplied & integrated Microsoft SQL 2005 at the site since, they were looking for a very robust and highly adaptable database which should be compatible and gives a high performance round the clock for mission critical applications.\nBackup Strategy - As information is critical, security and availability is the key concern. We have designed solutions with industry leaders of backup devices HP, Symantec (VERITAS). We have supplied and integrated a mix of HP autoloader & Standalone Drives with Symantec Backup software.\nHigh Computing Users - Every station has a number of high computing users with some unique broadcast add-ons. Over 150+ HP flagship high computing workstations were supplied & integrated with required NVIDIA, Matrox and Gforce display card with other specialized add-ons.\nNetwork Solution - We have positioned CISCO High performance fast Ethernet 10/100 and Gigabit 100/1000 for their mission critical applications of DATA and Voice traffic. For Office applications, CISCO Base configuration solution was best fit with 100+ Network Switch. For Video conferencing, a dedicated routing solution with low cost and high performance routing device was implemented. We have supplied & integrated a 3COM Chassis based Routing solution for them as multiple ISDN lines terminated on the same.\nLast Mile Solution – As the client required centralized application on MPLS based network, the last option is to be mission critical as information is depended on the same. We have positioned the world leader, RAD in the last mile solution. We have supplied and integrated the last mile solution at 40+ locations.\nInfrastructure Solution - Looking at the client’s future expansion scales, we have positioned HP Desktops (D290) And HP Laptops (nx6320). We have supplied 1000+ HP Desktops and 500+ HP Laptops.\nPrinting solution - As organization grows above a certain level; printing becomes the most important concern area to CFO & CTO. After doing a study on consumption of consumables & security issues, we have deployed 15+ HP MFD all across the country. Secured printing with Centralized Management System has given more profitability to entire organization.",
    resultDesc:
        "BIG 92.7 FM now has the capacity to touch every fifth Indian across the country - every third urban Indian and one in every eight Indian in the rural areas. In short, BIG 92.7 FM will have the largest coverage from any private radio channel in the country.",
  ),
  //sahara
  DataCaseStudy(
    pos: 12, bgcolor: 'Colors.red[100]',
    caseimg: 'assets/casestudy/sahara.jpg',
    name: "Sahara Next",
    aboutcompanyDesc:
        "Sahara Next is an Offshore Development & Information Technology Outsourcing Company that provides services & solutions to varied enterprises worldwide. It’s a part of a Fifty billion Dollar group (Sahara India Pariwar) and is managing one of the Largest IT & Telecom Infrastructure in India. For Sahara, this building is not only a consolidation office, but it will serve as a second HQ for the chairman and the management as well.",
    challengeDesc:
        "Sahara Next has acquired 9+ floors at the Parinee Crescendo – Bandra-Kurla Complex (Mumbai) that has a network capacity of 4000 Points. They wanted to have a converged unified, resilient and secured network in order to have BYODs, virtual offices and fixed offices which could communicate data, voice & video on a single infrastructure with the required security and mobility for wireless users.",
    solutionDesc:
        "Insight has designed and implemented the Datacenters of 18 Server and Network Rack with all the management equipment as per Tier 3 standards. We have also successfully executed the structure cabling for 4000 drop with OM4 Backbone and deployed 2500 Nos. of CISCO IP phones that are UC functionality configured and computer-connected. The entire network is highly resilient and fault tolerant after upgrading to the Multi chassis ether channel (M-LAG) & Voice Grade QoS on Edge, Core & Wireless.",
    resultDesc:
        "All the major problems of this project were systematically solved by Insight in accordance to their priority requirements.",
  ),
//tarapur
  DataCaseStudy(
    pos: 13,bgcolor: 'Colors.blue[600]',
    caseimg: 'assets/casestudy/npcil.png',
    name: "Tarapur Atomic Power Project",
    aboutcompanyDesc:
        "The 540 MWe TAPP-3, a totally indigenous nuclear power unit, is the 16th nuclear power reactor in the country. It has been designed and built by the Nuclear Power Corporation of India Limited (NPCIL), a public sector after undertaking under the Department of Atomic Energy (DAE). Unit 3 of the Tarapur Atomic Power Project (TAPP-3) attained its first criticality on the 21st May, 2006. The achievement of criticality was a major milestone in the project completion process. It signified the start of a self-sustaining nuclear fission chain reaction in the reactor core. The criticality of Unit 3 came about two months ahead of schedule. Unit 4, the predecessor of Unit 3, achieved criticality on 6th March, 2005. Tarapur Atomic Power Project Units - 3&4 (TAPP - 3&4) comprise of two Pressurized Heavy Water Reactor units (PHWRs) having 540 MWe each. The PHWRs use both natural uranium fuel and heavy water as moderators and coolants respectively. TAPP - 3&4 were built in the shortest time than any other PHWRs in India. This gestation period is comparable to international benchmarks.",
    challengeDesc:
        "TAPP 3&4 is located 200 km from Mumbai, the entire campus is of more than 2 km radial and civil infrastructure was constructed in a phased manner. The challenge was keep the campus in line with the latest civil infrastructure, IT investment and deployment.",
    solutionDesc:
        "Server Solution – As the project was conducted in a phased manner, the IT requirement was very dynamic and was not well defined, and since the project was working in a 3-shift availability, manageability was a key decision maker. We have positioned the Intel-based Xeon server from Compaq/HP ProLiant which have gave them a great expandable solution, highly available, scalable and ease of manageability.\nBackup Solution - Being in a remote location data, management was on top priority. Solutions were to be easy to manage and deploy, support heterogeneous platforms and certain applications on HP UNIX, Novell and Microsoft. We had supplied and integrated HP autoloader with Net Vault’s Backbone solution which gave them flexibility in terms of O.S. & Database.\nConnectivity Solution – The plant is 200 km away from Mumbai and the project should be working round the clock. The Local Telco Service provider was not having any connectivity, hence monitoring plant activity from TAPP Township which is 20 km away from the site and also the Mumbai office which is approx. 250 km from site and certain location within site were not having any wired connectivity. We have provided a CISCO Remote Access Solution with a secured login name and password with limited access to network depending upon the credentials. Besides deploying WiFi for connecting various temporary office setups, Insight has also created a secured internet access to the entire plant by offering a mix of security of CISCO PIX and WatchGuard UTM solution. We have laid more than 20 km of OFC by providing more than 30 segments on campus in addition to delivering more than 40 km of CAT6 with 350+ networking.",
    resultDesc:
        "All the major problems of this project were systematically solved by Insight in accordance to their priority requirements.",
  ),
];
