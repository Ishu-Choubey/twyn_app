import 'package:flutter/material.dart';
import 'package:twyn_app/utils.dart';
import 'submitted-page.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

const List<String> citylist = <String>['Abdul', 'Adilabad', 'Adwani', 'Agartala', 'Agra', 'Ahmedabad', 'Ahmednagar', 'Aizawl', 'Ajabpur', 'Ajmer', 'Akividu', 'Akola', 'Alanallur', 'Alangulam', 'Alappuzha', 'Aldona', 'Alibag', 'Aligarh', 'Alipur', 'Alipur', 'Allahabad', 'Almora', 'Aluva', 'Alwar', 'Amal', 'Amalapuram', 'Ambad', 'Ambah', 'Ambala', 'Ambarnath', 'Ambejogai', 'Ambikapur', 'Ambur', 'Amer', 'Amet', 'Amravati', 'Amreli', 'Amritsar', 'Anand', 'Anantapur', 'Anantnag', 'Anantpur', 'Anchal', 'Andheri', 'Andra', 'Angadipuram', 'Angul', 'Ankleshwar', 'Annamalainagar', 'Antapur', 'Arakkonam', 'Arani', 'Aranmula', 'Arch', 'Ariyalur', 'Arora', 'Arpora', 'Arunachal', 'Arvi', 'Asansol', 'Assagao', 'Attingal', 'Attur', 'Aundh', 'Aurangabad', 'Aurangabad', 'Avanigadda', 'Azamgarh', 'Baddi', 'Badlapur', 'Bagalkot', 'Bagh', 'Bagpat', 'Bahadurgarh', 'Baharampur', 'Baidyabati', 'Bala', 'Balaghat', 'Balana', 'Balanagar', 'Balangir', 'Balasore', 'Bali', 'Bali', 'Ballabgarh', 'Balu', 'Balurghat', 'Bambolim', 'Banda', 'Bandra', 'Banga', 'Bangalore', 'Bangaon', 'Bank', 'Banka', 'Bankura', 'Banswara', 'Bapatla', 'Barakpur', 'Baramati', 'Barddhaman', 'Bardoli', 'Bareilly', 'Bargarh', 'Barmer', 'Barnala', 'Baroda', 'Barpali', 'Barpeta', 'Basirhat', 'Basti', 'Basu', 'Batala', 'Bawan', 'Bawana', 'Beawar', 'Begusarai', 'Behala', 'Bela', 'Belapur', 'Belgaum', 'Belgharia', 'Bellare', 'Bellary', 'Bemetara', 'Berasia', 'Betalbatim', 'Betim', 'Betul', 'Bhadath', 'Bhadohi', 'Bhadravati', 'Bhagalpur', 'Bhagwan', 'Bhandari', 'Bhandup', 'Bharatpur', 'Bharuch', 'Bhatapara', 'Bhatinda', 'Bhatkal', 'Bhavnagar', 'Bhawan', 'Bhilai', 'Bhilwara', 'Bhimavaram', 'Bhiwandi', 'Bhiwani', 'Bhoj', 'Bhongir', 'Bhopal', 'Bhubaneswar', 'Bhuj', 'Bhusawal', 'Bichpuri', 'Bidar', 'Bihar Sharif', 'Bijapur', 'Bikaner', 'Bilaspur', 'Bilaspur', 'Bilimora', 'Binavas', 'Binnaguri', 'Bishnupur', 'Bobbili', 'Bodhan', 'Bodinayakkanur', 'Boisar', 'Bokaro', 'Bolpur', 'Botad', 'Brahmapur', 'Budaun', 'Budbud', 'Budha', 'Bulandshahr', 'Bundi', 'Calangute', 'Candolim', 'Canning', 'Caranzalem', 'Chakan', 'Chakra', 'Chalisgaon', 'Chamba', 'Champa', 'Chand', 'Chandan', 'Chandannagar', 'Chandauli', 'Chandausi', 'Chandigarh', 'Chandrapur', 'Changanacheri', 'Channapatna', 'Charan', 'Charu', 'Chen', 'Chengannur', 'Chennai', 'Chetan', 'Cheyyar', 'Chhabra', 'Chhachhrauli', 'Chhota Udepur', 'Chicalim', 'Chidambaram', 'ChikmagalÅ«r', 'Chikodi', 'Chinchvad', 'Chintamani', 'Chiplun', 'Chirala', 'Chitra', 'Chitradurga', 'Chittoor', 'Chittur', 'Choolai', 'Chopda', 'Chopra', 'Churachandpur', 'Coimbatore', 'Colaba', 'Connaught Place', 'Coonoor', 'Cuddalore', 'Cumbum', 'Cuncolim', 'Curchorem', 'Cuttack', 'Dadri', 'Dahanu', 'Dahod', 'Dam Dam', 'Daman', 'Damoh', 'Dang', 'Dangi', 'Darbhanga', 'Darjeeling', 'Darsi', 'Dasna', 'Dasua', 'Davangere', 'Dehradun', 'Delhi', 'Deolali', 'Deoria', 'Devgarh', 'Devipattinam', 'Dewas', 'Dhaka', 'Dhamtari', 'Dhanbad', 'Dhansura', 'Dhar', 'Dharamsala', 'Dharapuram', 'Dharavi', 'Dhariwal', 'Dharmapuri', 'Dharwad', 'Dhenkanal', 'Dhone', 'Dhrol', 'Dhubri', 'Dhule', 'Dhuri', 'Dibrugarh', 'Dicholi', 'Dimapur', 'Dinanagar', 'Dindigul', 'Dindori', 'Dipas', 'Dogadda', 'Dona Paula', 'Dumka', 'Durg', 'Durgapur', 'Dwarahat', 'Dwarka', 'Edavanna', 'Ekkattuthangal', 'Ellora Caves', 'Eluru', 'Eral', 'Ernakulam', 'Erode', 'Etawah', 'Faizabad', 'Farakka', 'Faridabad', 'Faridkot', 'Fatehabad', 'Fatehgarh', 'Fatehpur', 'Firozabad', 'Firozpur', 'Fort', 'Gadag', 'Gampalagudem', 'Gandhidham', 'Gandhigram', 'Gandhinagar', 'Ganga', 'Ganganagar', 'Gangapur', 'Gangrar', 'Gangtok', 'Gannavaram', 'Ganpat', 'Gargoti', 'Garhshankar', 'Gaya', 'Ghana', 'Ghatal', 'Ghatkopar', 'Ghaziabad', 'Goa', 'Gobichettipalayam', 'Godhra', 'Gohana', 'Golaghat', 'Gold', 'Gonda', 'Gorakhpur', 'Goregaon', 'Goshaingaon', 'Gudivada', 'Gudur', 'Guindy', 'Gujrat', 'Gulbarga', 'Guna', 'Guntur', 'Gurdaspur', 'Gurgaon', 'Guruvayur', 'Guwahati', 'Gwalior', 'Habra', 'Hadadi', 'Haldia', 'Haldwani', 'Hamirpur', 'Hamirpur', 'Hansi', 'Hapur', 'Hari', 'Haridwar', 'Haripad', 'Haripur', 'Haryana', 'Hassan', 'Haveri', 'Hazaribagh', 'Himatnagar', 'Hinganghat', 'Hingoli', 'Hira', 'Hiriyur', 'Hisar', 'Honavar', 'Hong', 'Hoshangabad', 'Hoshiarpur', 'Hosur', 'Howrah', 'Hubli', 'Hugli', 'Hyderabad', 'Ichalkaranji', 'Idukki', 'Igatpuri', 'Iglas', 'Imphal', 'Indore', 'Indraprast', 'Irinjalakuda', 'Itanagar', 'Jabalpur', 'Jadabpur', 'Jagdalpur', 'Jagraon', 'Jaipur', 'Jaisalmer', 'Jajpur', 'Jalalabad', 'Jalalpur', 'Jalandhar', 'Jalesar', 'Jalgaon Jamod', 'Jalna', 'Jalpaiguri', 'Jamal', 'Jammu', 'Jamnagar', 'Jamshedpur', 'Janjgir', 'Jaspur', 'Jatani', 'Jaunpur', 'Jayanti', 'Jaynagar', 'Jaypur', 'Jha Jha', 'Jhajjar', 'Jhalawar', 'Jhansi', 'Jhargram', 'Jharsuguda', 'Jhunjhunun', 'Jind', 'Jodhpur', 'Jorhat', 'Junagadh', 'Kadapa', 'Kagal', 'Kailaras', 'Kaimganj', 'Kaithal', 'Kakdwip', 'Kakinada', 'Kaladi', 'Kalam', 'Kalamboli', 'Kalan', 'Kalinga', 'Kalka', 'Kalkaji Devi', 'Kalol', 'Kalpakkam', 'Kalpetta', 'Kalra', 'Kalyan', 'Kalyani', 'Kamalpur', 'Kamalpura', 'Kamat', 'Kanakpura', 'Kanchipuram', 'Kanchrapara', 'Kandi', 'Kangayam', 'Kangra', 'Kanhangad', 'Kanigiri', 'Kaniyambadi', 'Kankauli', 'Kanniyakumari', 'Kannur', 'Kanpur', 'Kapurthala Town', 'Karad', 'Karaikal', 'Karaikudi', 'Karamadai', 'Karamsad', 'Karanja', 'Karari', 'Kargil', 'Karimganj', 'Karimnagar', 'Karjat', 'Karnal', 'Karsiyang', 'Karur', 'Karwar', 'Kasal', 'Kasaragod', 'Kasganj', 'Kashipur', 'Kasia', 'Kataria', 'Kathua', 'Katni', 'Katoya', 'Katra', 'Kaul', 'Kavali', 'Kavaratti', 'Kayamkulam', 'Keshod', 'Khajuraho Group of Monuments', 'Khalapur', 'Khambhat', 'Khammam', 'Khan', 'Khanna', 'Kharagpur', 'Kharar', 'Khargone', 'Khatauli', 'Kheda', 'Khergam', 'Kheri', 'Khinwara', 'Khopoli', 'Khurda', 'Khurja', 'Kishangarh', 'Koch Bihar', 'Kochi', 'Kodaikanal', 'Kodungallur', 'Kohima', 'Kokrajhar', 'Kolar', 'Kolayat', 'Kolhapur', 'Kolkata', 'Kollam', 'Kollegal', 'Koni', 'Koni', 'Konnagar', 'Koothanallur', 'Koppal', 'Koraput', 'Korba', 'Kosamba', 'Kot Isa Khan', 'Kota', 'Kotian', 'Kottagudem', 'Kottakkal', 'Kottarakara', 'Kottayam', 'Kovilpatti', 'Kovvur', 'Kozhikode', 'Krishnagiri', 'Kulti', 'Kumar', 'Kumbakonam', 'Kumhari', 'Kundan', 'Kunwar', 'Kuppam', 'Kurali', 'Kurnool', 'Kushalnagar', 'Kuzhithurai', 'Ladwa', 'Lakhimpur', 'Lala', 'Lalgudi', 'Lamba Harisingh', 'Lanka', 'Latur', 'Liluah', 'Lohaghat', 'Lucknow', 'Ludhiana', 'Machhiwara', 'Machilipatnam', 'Madanapalle', 'Madgaon', 'Madhoganj', 'Madikeri', 'Madurai', 'Madurantakam', 'Mahabalipuram', 'Mahad', 'Mahajan', 'Mahal', 'Maharaj', 'Mahatma', 'Mahesana', 'Mahesh', 'Mahim', 'Mahulia', 'Malappuram', 'Maldah', 'Malpur', 'Manali', 'Mancherial', 'Mandal', 'Mandapeta', 'Mandi', 'Mandla', 'Mandsaur', 'Mandvi', 'Mandya', 'Mangalagiri', 'Mangalore', 'Mangaon', 'Manipala', 'Manipur', 'Manjeri', 'Manna', 'Mannargudi', 'Manor', 'Mansa', 'Manu', 'Markal', 'Markapur', 'Marmagao', 'Maru', 'Mashobra', 'Matar', 'Mathan', 'Mathura', 'Mattanur', 'Mavelikara', 'Mawana', 'Mayapur', 'Medak', 'Medarametla', 'Medchal', 'Medinipur', 'Meerut', 'Mehra', 'Mettur', 'Mhow', 'Mill', 'Miraj', 'Mirza Murad', 'Mirzapur', 'Mithapur', 'Modasa', 'Moga', 'Mohala', 'Mohali', 'Mohan', 'Moradabad', 'Morena', 'Morinda', 'Morvi', 'Motihari', 'Mount Abu', 'Muddanuru', 'Mukerian', 'Muktsar', 'Multi', 'Mumbai', 'Mundgod', 'Mundra', 'Munger', 'Murshidabad', 'Mussoorie', 'Muzaffarnagar', 'Muzaffarpur', 'Mylapore', 'Mysore', 'Nabadwip', 'Nabha', 'Nadgaon', 'Nadia', 'Nadiad', 'Nagal', 'Nagapattinam', 'Nagar', 'Nagara', 'Nagari', 'Nagaur', 'Nagercoil', 'Nagpur', 'Nagwa', 'Naini', 'Nalagarh', 'Nalbari', 'Nalgonda', 'Namakkal', 'Namrup', 'Nanda', 'Nanded', 'Nandi', 'Nandigama', 'Nandurbar', 'Nandyal', 'Naraina', 'Narasaraopet', 'Narayangaon', 'Narela', 'Narnaul', 'Narsapur', 'Nashik', 'Nathdwara', 'Navelim', 'Navsari', 'Nayagarh', 'Nazira', 'Nehra', 'Nellore', 'Neral', 'Neri', 'New Delhi', 'Neyveli', 'Nila', 'Nilambur', 'Nilokheri', 'Nizamabad', 'Noida', 'Nongpoh', 'Nongstoin', 'North Lakhimpur', 'Nurpur', 'Nuzvid', 'Odhan', 'Omalur', 'Ongole', 'Ooty', 'Orai', 'Osmanabad', 'Ottappalam', 'Pachmarhi', 'Padrauna', 'Pahalgam', 'Pakala', 'Pala', 'Palakkad', 'Palampur', 'Palani', 'Palayam', 'Palghar', 'Pali', 'Palladam', 'Paloncha', 'Palus', 'Palwal', 'Panchal', 'Panchgani', 'Pandharpur', 'Panipat', 'Panjim', 'Panruti', 'Pantnagar', 'Panvel', 'Paonta Sahib', 'Parappanangadi', 'Paravur', 'Parbhani', 'Parel', 'Parra', 'Patan', 'Patancheru', 'Patel', 'Patelguda', 'Pathanamthitta', 'Pathankot', 'Patiala', 'Patna', 'Pattambi', 'Pattukkottai', 'Pauri', 'Payyanur', 'Peddapuram', 'Pehowa', 'Perambalur', 'Peranampattu', 'Perundurai', 'Petlad', 'Phagwara', 'Phaphamau', 'Piduguralla', 'Pilani', 'Pileru', 'Pilkhuwa', 'Pimpri', 'Pitampura', 'Pithapuram', 'Pithoragarh', 'Pochampalli', 'Pollachi', 'Ponda', 'Ponnani', 'Ponneri', 'Porbandar', 'Port Blair', 'Potti', 'Powai', 'Proddatur', 'Puducherry', 'Pudukkottai', 'Puliyur', 'Punalur', 'Pune', 'Puras', 'Puri', 'Purnea', 'Puruliya', 'Pusa', 'Pushkar', 'Puttur', 'Puttur', 'Quepem', 'Raichur', 'Raigarh', 'Raipur', 'Raipur', 'Rajahmundry', 'Rajapalaiyam', 'Rajapur', 'Rajkot', 'Rajpur', 'Rajpura', 'Raju', 'Rama', 'Ramanagaram', 'Ramanathapuram', 'Ramapuram', 'Ramavaram', 'Ramgarh', 'Ramnagar', 'Rampur', 'Rana', 'Ranaghat', 'Ranchi', 'Rander', 'Raniganj', 'Ranippettai', 'Ranjan', 'Ratlam', 'Ratnagiri', 'Raurkela', 'Rawal', 'Raxaul', 'Rayagada', 'Rewa', 'Rewari', 'Ring', 'Rishikesh', 'Rohtak', 'Roorkee', 'Roshan', 'Rudrapur', 'Rupnagar', 'Rupnarayanpur', 'Sachin', 'Sagar', 'Sagar', 'Saha', 'Saharanpur', 'Sahibabad', 'Sakri', 'Sakri', 'Salem', 'Saligao', 'Salt Lake City', 'Samastipur', 'Sambalpur', 'Sanand', 'Sandur', 'Sangam', 'Sangamner', 'Sangli', 'Sangola', 'Sangrur', 'Sanquelim', 'Saranga', 'Sarangi', 'Sarwar', 'Satara', 'Satna', 'Sattur', 'Sawi', 'Secunderabad', 'Sehore', 'Sendhwa', 'Serampore', 'Shadnagar', 'Shahabad', 'Shahapur', 'Shahdara', 'Shahdol', 'Shahjahanpur', 'Shahkot', 'Shamsabad', 'Shanti Grama', 'Shillong', 'Shimla', 'Shimoga', 'Shirgaon', 'Shiv', 'Sholavandan', 'Shoranur', 'Shrigonda', 'Shyamnagar', 'Sibsagar', 'Sidhi', 'Sidhpur', 'Sikar', 'Sikka', 'Silchar', 'Siliguri', 'Silvassa', 'Singarayakonda', 'Singtam', 'Sinnar', 'Sion', 'Sirhind', 'Sirkazhi', 'Sirohi', 'Sirsa', 'Sirsi', 'Siruguppa', 'Siruseri', 'Sirwani', 'Sitapur', 'Siuri', 'Sivaganga', 'Sivakasi', 'Sodhi', 'Sojat', 'Solan', 'Solapur', 'Solim', 'Somnath', 'Soni', 'Sonipat', 'Sopara', 'Srikakulam', 'Srikalahasti', 'Srinagar', 'Sriperumbudur', 'Srirangam', 'Srivilliputhur', 'Sukma', 'Sultan', 'Sultanpur', 'Sultans Battery', 'Suman', 'Sunam', 'Sundargarh', 'Surana', 'Suratgarh', 'Surendranagar', 'Suriapet', 'Tadepallegudem', 'Tala', 'Talcher', 'Talegaon Dabhade', 'Talwandi Sabo', 'Tambaram', 'Tanda', 'Tanuku', 'Tarn Taran', 'Teri', 'Tezpur', 'Thalassery', 'Thane', 'Thanjavur', 'Thasra', 'Thenali', 'Thenkasi', 'Thirumangalam', 'Thiruthani', 'Thiruvananthapuram', 'Thiruvarur', 'Thoothukudi', 'Thrissur', 'Tikamgarh', 'Tindivanam', 'Tinsukia', 'Tiptur', 'Tiruchchendur', 'Tiruchi', 'Tirumala', 'Tirumala - Tirupati', 'Tirunelveli', 'Tiruppur', 'Tirur', 'Tiruvalla', 'Tiruvallur', 'Tiruvannamalai', 'Tohana', 'Tonk', 'Trimbak', 'Tuljapur', 'TumkÅ«r', 'Turaiyur', 'Udaigiri', 'Udaipur', 'Udupi', 'Ujjain', 'Ulhasnagar', 'Ulubari', 'Umred', 'Unnao', 'Uppal', 'Uttarkashi', 'Vadamadurai', 'Vadner', 'Vadodara', 'Vaikam', 'Vainguinim', 'Valsad', 'Vandalur', 'Vandavasi', 'Vaniyambadi', 'Vapi', 'Varanasi', 'Vasai', 'Vasco', 'Vashi', 'Vazhakulam', 'Vellore', 'Verna', 'Vidisha', 'Vijapur', 'Vijayawada', 'Vikarabad', 'Vikasnagar', 'Villupuram', 'Vinukonda', 'Virar', 'Visakhapatnam', 'Visnagar', 'Vizianagaram', 'Wai', 'Warangal', 'Wardha', 'Wellington', 'Yadgir', 'Yamunanagar', 'Yanam', 'Yavatmal', 'Yeola', 'Yercaud'];

class Order extends StatefulWidget {
  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool isExpanded = false ;
  String selectedValue = 'choose your city ' ;
  dynamic _color1 = Color(0xfff6f6f6);
  dynamic _color2 = Color(0xfff6f6f6);
  dynamic _color3 = Color(0xfff6f6f6);
  dynamic _colortext1 = Color(0xffA8A8A8);
  dynamic _colortext2 = Color(0xffA8A8A8);
  dynamic _colortext3 = Color(0xffA8A8A8);
  dynamic weight1 = FontWeight.w500;
  dynamic weight2 = FontWeight.w500;
  dynamic weight3 = FontWeight.w500;
  double v = 100.0;
  final nameController=TextEditingController();
  String materialcolor='';
  double quantity=0;
  String city='';

  @override
  Widget build(BuildContext context) {
    double baseWidth = 450;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              // isubmittedscreenLo8 (18:20)
              width: double.infinity,
              height: isExpanded? 1250*fem: 1050*fem,
              decoration: BoxDecoration(
                color: Color(0xffE1E1E1),
              ),
              child: Container(
                // backgroundYXp (18:21)
                padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f3f3),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // headingCsG (18:51)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        width: double.infinity,
                        height: 222 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff4D1354),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'images/mask-group.png',
                            ),
                          ),
                        ),
                        child: Stack(children: [
                          Positioned(
                            // twynlogocolor21Zp (18:56)
                            left: 83.3811035156 * fem,
                            top: 50 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 270 * fem,
                                height: 120 * fem,
                                child: Image.asset(
                                  'images/twyn-logo-color-2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // immersiveaipowereddigitaltwins (18:57)
                            left: 85 * fem,
                            top: 157 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 265 * fem,
                                height: 38 * fem,
                                child: Text(
                                  'Immersive, AI-powered Digital Twins for Smart Factories',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Helvetica',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575 * ffem / fem,
                                    color: Color(0xffb43f67),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 30 * fem, 0 * fem, 25 * fem),
                                child: Text(
                                  'Place Your Order',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Helvetica',
                                    fontSize: 30 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2575 * ffem / fem,
                                    color: Color(0xff79324c),
                                  ),
                                ),
                              )
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            35 * fem, 0 * fem, 35 * fem, 0 * fem),
                        padding: EdgeInsets.fromLTRB(
                            30 * fem, 40 * fem, 30 * fem, 40 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xfffafafa),
                          borderRadius: BorderRadius.circular(33 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              offset: Offset(7 * fem, 6 * fem),
                              blurRadius: 6 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  4 * fem, 0 * fem, 4 * fem, 20 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // nameo4A (77:283)
                                    margin: EdgeInsets.fromLTRB(
                                        5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                    child: Text(
                                      'Name:',
                                      style: SafeGoogleFont(
                                        'Helvetica',
                                        fontSize: 19 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2575 * ffem / fem,
                                        color: Color(0xffbc4772),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xfffafafa),
                                        borderRadius:
                                            BorderRadius.circular(33 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x120000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 6 * fem,
                                          ),
                                        ]),
                                    child: TextField(
                                      controller: nameController,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.fromLTRB(
                                            15.0, 5.0, 5.0, 10.0),
                                        fillColor: Color(0xffF6F6F6),
                                        filled: true,
                                        hintText: "Eg. Jon Doe",
                                        hintStyle:
                                            TextStyle(color: Color(0xffa7a7a7)),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(500 * fem),
                                        ),
                                        disabledBorder: InputBorder.none,
                                      ),
                                      style: SafeGoogleFont(
                                        'Helvetica',
                                        fontSize: 17.5 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.25 * ffem / fem,
                                        color: Color(0xff545252),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),//Name Container
                            Container( //Product colour box
                              margin: EdgeInsets.fromLTRB(
                                  4 * fem, 0 * fem, 4 * fem, 20 * fem),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameo4A (77:283)
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                      child: Text(
                                        'Product Colour:',
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 19 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffbc4772),
                                        ),
                                      ),
                                    ),
                                    Container(          //colour box
                                      padding: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 10 * fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xfff6f6f6),
                                        borderRadius: BorderRadius.circular(33 * fem),
                                        boxShadow: [BoxShadow(
                                            color: Color(0x26000000),
                                            offset: Offset(7 * fem, 6 * fem),
                                            blurRadius: 6 * fem,
                                          ),
                                        ],
                                      ),
                                      child:
                                      Container(
                                        // colouroptionsmim (1:70)
                                        child: Padding(
                                          padding: EdgeInsets.fromLTRB(15*fem, 0,10*fem, 0),
                                          child: Row(
                                            children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  width: 40*fem,
                                                  height: 40*fem,
                                                  decoration: BoxDecoration(
                                                    color: _color1,
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                ),

                                                Container(
                                                  margin: EdgeInsets.fromLTRB(5*fem, 5*fem,0, 0),
                                                  width: 30*fem,
                                                  height: 30*fem,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffEA4C4C),
                                                    borderRadius: BorderRadius.circular(100),
                                                  ),
                                                  child: MaterialButton(onPressed: () {
                                                    setState(() {
                                                      materialcolor='Red';
                                                      _color1 = Color(0xfffaa5a5);
                                                      _color2 = Color(0xfffafafa);
                                                      _color3 = Color(0xfffafafa);
                                                      weight1 = FontWeight.w600;
                                                      weight2 = FontWeight.w500;
                                                      weight3 = FontWeight.w500;
                                                      _colortext1=Color(0xffbc4772);
                                                      _colortext2=Color(0xffA8A8A8);
                                                      _colortext3=Color(0xffA8A8A8);// This change Container color
                                                    });
                                                  }),
                                                )
                                              ],
                                            ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(5*fem,0,15*fem,0),
                                                child: Container(
                                                  child: Text(
                                                    'Red',
                                                    style: SafeGoogleFont(
                                                      'Helvetica',
                                                      fontSize: 17.5 * ffem,
                                                      fontWeight: weight1,
                                                      height: 1.2575 * ffem / fem,
                                                      color: _colortext1
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Stack(
                                                children: [
                                                  Container(
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                    decoration: BoxDecoration(
                                                      color: _color2,
                                                      borderRadius: BorderRadius.circular(100),
                                                    ),
                                                  ),

                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(5*fem, 5*fem,0, 0),
                                                    width: 30*fem,
                                                    height: 30*fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffea4c89),
                                                      borderRadius: BorderRadius.circular(100),
                                                    ),
                                                    child: MaterialButton(onPressed: () {
                                                      setState(() {
                                                        materialcolor='Pink';
                                                        _color1 = Color(0xfffafafa);
                                                        _color2 = Color(0xffeaa5bf);
                                                        _color3 = Color(0xfffafafa);
                                                        weight2 = FontWeight.w600;
                                                        weight1 = FontWeight.w500;
                                                        weight3 = FontWeight.w500;
                                                        _colortext2=Color(0xffbc4772);
                                                        _colortext1=Color(0xffA8A8A8);
                                                        _colortext3=Color(0xffA8A8A8);
                                                      });
                                                    }),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(5*fem,0,15*fem,0),
                                                child: Container(
                                                  child: Text(
                                                    'Pink',
                                                    style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 17.5 * ffem,
                                                        fontWeight: weight2,
                                                        height: 1.2575 * ffem / fem,
                                                        color: _colortext2
                                                    ),
                                                  ),
                                                ),
                                              ),

                                              Stack(
                                                children: [
                                                  Container(
                                                    width: 40*fem,
                                                    height: 40*fem,
                                                    decoration: BoxDecoration(
                                                      color: _color3,
                                                      borderRadius: BorderRadius.circular(100),
                                                    ),
                                                  ),

                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(5*fem, 5*fem,0, 0),
                                                    width: 30*fem,
                                                    height: 30*fem,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffffcc5c),
                                                      borderRadius: BorderRadius.circular(100),
                                                    ),
                                                    child: MaterialButton(onPressed: () {
                                                      setState(() {
                                                        materialcolor='Yellow';
                                                        _color1 = Color(0xfffafafa);
                                                        _color2 = Color(0xfffafafa);
                                                        _color3 = Color(0xffffe8b5);
                                                        weight3 = FontWeight.w600;
                                                        weight2 = FontWeight.w500;
                                                        weight1 = FontWeight.w500;
                                                        _colortext2=Color(0xffA8A8A8);
                                                        _colortext1=Color(0xffA8A8A8);
                                                        _colortext3=Color(0xffbc4772);// This change Container color
                                                      });
                                                    }),
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(5*fem,0,0*fem,0),
                                                child: Container(
                                                  child: Text(
                                                    'Yellow',
                                                    style: SafeGoogleFont(
                                                        'Helvetica',
                                                        fontSize: 17.5 * ffem,
                                                        fontWeight: weight3,
                                                        height: 1.2575 * ffem / fem,
                                                        color: _colortext3
                                                    ),
                                                  ),
                                                ),
                                              )


                                            ]
                                          ),
                                        ),
                                      ),
                                    )
                                  ]),
                            ),//Product Container
                            Container(
                                margin: EdgeInsets.fromLTRB(
                                    4 * fem, 0 * fem, 4 * fem, 20 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameo4A (77:283)
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                      child: Text(
                                        'Product Quantity:',
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 19 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffbc4772),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 130*fem,
                                      decoration: BoxDecoration(
                                          color: Color(0xfffafafa),
                                          borderRadius:
                                          BorderRadius.circular(33 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x120000000),
                                              offset: Offset(7 * fem, 6 * fem),
                                              blurRadius: 6 * fem,
                                            ),
                                          ]),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(24, 20,24, 5),
                                            child: Text(
                                              'Choose the quantity required(in gms):',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Helvetica',
                                                fontSize: 15.5 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2575 * ffem / fem,
                                                color: Color(0xffA8A8A8),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(10, 0,10, 0),
                                            child: SfSliderTheme(
                                              data: SfSliderThemeData(
                                                activeLabelStyle: TextStyle(color: Color(0xffA8A8A8), fontSize: 11, fontWeight: FontWeight.w700),
                                                inactiveLabelStyle: TextStyle(color: Color(0xffA8A8A8), fontSize: 11, fontWeight: FontWeight.w500),
                                              ),
                                              child: SfSlider(
                                                min: 100,
                                                max: 500,
                                                stepSize: 100,
                                                value: v,
                                                interval: 100,
                                                activeColor: Color(0xffBC4772),
                                                inactiveColor: Color(0xffE9E2E2),
                                                showTicks: true,
                                                showLabels: true,
                                                enableTooltip: true,
                                                //showDividers: true,
                                                //minorTicksPerInterval: 1,
                                                onChanged: (value) => setState((){
                                                  this.v = value;
                                                  quantity=value;
                                                }),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                            ),//Slider Container
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                4 * fem, 0 * fem, 4 * fem, 10 * fem),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameo4A (77:283)
                                      margin: EdgeInsets.fromLTRB(
                                          5 * fem, 0 * fem, 0 * fem, 17 * fem),
                                      child: Text(
                                        'Delivery City:',
                                        style: SafeGoogleFont(
                                          'Helvetica',
                                          fontSize: 19 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.2575 * ffem / fem,
                                          color: Color(0xffbc4772),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(0,0,0,20*fem),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50*fem,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(33*fem),
                                                    color: Color(0xfffafafa),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(0x120000000),
                                                        offset: Offset(7 * fem, 6 * fem),
                                                        blurRadius: 6 * fem,
                                                      ),
                                                    ]),
                                                child: Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.fromLTRB(45*fem,0,15*fem,0),
                                                    child: InkWell(
                                                        onTap: (){
                                                          FocusScope.of(context).unfocus();
                                                          isExpanded = !isExpanded;
                                                          setState(() {
                                                          });
                                                        },
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Expanded(child: Text(selectedValue, textAlign: TextAlign.center, style: SafeGoogleFont('Helvetica',
                                                              fontSize: 15.5 * ffem, fontWeight: FontWeight.w500, height: 1.2575 * ffem / fem, color: Color(0xffA8A8A8),
                                                            ),
                                                            ),
                                                            ),
                                                            Icon( isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down ,
                                                              color: isExpanded  ? Color(0xffA8A8A8) : Color(0xffA8A8A8),
                                                            )
                                                          ],
                                                        )),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if(isExpanded)
                                              SizedBox(
                                                height: 180*fem,
                                                width: 220*fem,
                                                child: ListView(
                                                  shrinkWrap: true,
                                                  physics: ScrollPhysics(),
                                                  children: citylist.map((e) =>
                                                      InkWell(
                                                        onTap: (){
                                                          isExpanded = false ;
                                                          selectedValue = e ;
                                                          setState(() {
                                                            city=e;
                                                          });
                                                        },
                                                        child: Container(
                                                            height: 30*fem,
                                                            width: double.infinity,
                                                            decoration: BoxDecoration(
                                                                color: selectedValue == e ? Color(0xffCCCBCB): Color(0xffFBFBFB),

                                                            ),
                                                            child: Center(child: Text(e.toString() ,textAlign: TextAlign.center, style: SafeGoogleFont('Helvetica',
                                                              fontSize: 14.5 * ffem, fontWeight: selectedValue == e  ? FontWeight.w600 :FontWeight.w500,
                                                                height: 1.2575 * ffem / fem,
                                                                color: Color(0xff6F6A6A)
                                                              ) ,
                                                            )
                                                            )
                                                        ),
                                                      )
                                                  ).toList(),
                                                ),
                                              )
                                          ],
                                        ),
                                    )
                                  ]
                               ),
                            ),
                            //Delivery Container
                            Container(
                              // trackLrJ (18:31)
                              margin: EdgeInsets.fromLTRB(
                                  31 * fem, 20 * fem, 31 * fem, 0 * fem),
                              child: TextButton(
                                onPressed: () async {
                                  CollectionReference collRef = await FirebaseFirestore.instance.collection('client');
                                  collRef.add({
                                    'name':nameController.text,
                                    'color': materialcolor,
                                    'quantity': quantity,
                                    'city': city,
                                  }).then((DocumentReference doc){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Submit(name: nameController.text,docid: doc.id, color: materialcolor, Quantity: quantity)));
                                  });

                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      60 * fem, 0 * fem, 60 * fem, 13 * fem),
                                  width: double.infinity,
                                  height: 55 * fem,
                                  child: Container(
                                    // frame11FiN (I18:31;440:2040)
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4e1455),
                                      borderRadius:
                                          BorderRadius.circular(30 * fem),
                                    ),
                                    child: Center(
                                      child: Center(
                                        child: Text(
                                          'Submit',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Helvetica',
                                            fontSize: 17 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2575 * ffem / fem,
                                            color: Color(0xfff6f4f4),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),//Submit Container
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
