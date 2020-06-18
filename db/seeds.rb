# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Route.destroy_all
Company.destroy_all
UserCompany.destroy_all
FavoriteRoute.destroy_all
CompleteRoute.destroy_all
Journal.destroy_all
Review.destroy_all
Trip.destroy_all

user1 = User.create(username: "richard", admin: true, first_name: "Richard", last_name:"Bobo", 
        email: "richard@gmail.com" , password: 'password' , 
        about_me: "Richard is a software engineer living in DC who enjoys long distance running and cycling.",
        img_url: "https://culturalvistas.org/cms/assets/uploads/2015/08/profilepif.jpg")
user2 = User.create(username: "ElliottSmelliott", first_name: "Elliott", last_name:"Smith",
    email: "Ellie@gmail.com" , password: 'password' , 
    img_url: "https://semantic-ui.com/images/avatar/large/elliot.jpg")
user3 = User.create(username: "JennyLovesCats", first_name: "Jenny", last_name:"Chung",
    email: "JennyJo@gmail.com" , password: 'password', 
    img_url: "https://semantic-ui.com/images/avatar/large/jenny.jpg")


# route1 = Route.create(name: "Billy Goat Trail",length: 10,source: "www.google.com", short_description: "this is a brief descitpion about the route.", 
#             difficulty: "Difficult", surface: "Gravel", description: "This is a really long dirt trail...",
#             image_url: "https://blog.mapmyrun.com/wp-content/uploads/2017/06/10-Ways-Biking-Makes-You-a-Better-Person.jpg", 
#             tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
# route2 = Route.create(name: "Trail ABC",length: 35,source: "www.google.com",short_description: "this is a brief descitpion about the route.",
#             difficulty: "Easy", surface: "Paved", description: "This is a really long dirt trail...",tips: "Don't go alone",
#             image_url:"https://static01.nyt.com/images/2019/11/19/well/physed-bike/physed-bike-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
#             google_map: "https://www.colorado.com/sites/default/files/7MTNBIKING_LeisaGibson_KeystonePR.jpg" )
# route3 = Route.create(name: "Trail Don't get kidnapped",length: 75,source: "www.google.com",
#             image_url: "https://res.cloudinary.com/simpleview/image/upload/v1563915967/clients/capecodma/Biking_e8a6a7d3-163d-46a1-a875-2be497658b2b.jpg",
#             short_description: "this is a brief descitpion about the route.",difficulty: "Difficult", surface: "Paved", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
# route4 = Route.create(name: "Kingman Island Dirt Trail",source: "www.google.com",length: 6,
#             image_url: "https://www.floridashistoriccoast.com/imager/s3_us-east-1_amazonaws_com/st-augustine-2019/images/Sports-Outdoors/COUPLE_ON_BIKES_1059925dafc489659acd47a728e6733c.jpg",
#             short_description: "this is a brief descitpion about the route.",difficulty: "Moderate", surface: "Paved", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )
# route5 = Route.create(name: "Trail Mt. Vernon",length: 15,source: "www.google.com",
#             image_url: "https://www.sunset.com/wp-content/uploads/1422e4f0e374bcaad442c74d75077469-968x537-c-default.jpg", 
#             short_description: "this is a brief descitpion about the route.",difficulty: "Easy", surface: "Mixed", description: "This is a really long dirt trail...",tips: "Don't go alone",google_map: "http://bikewashington.org/trails/xdctrails.gif.pagespeed.ic.M0HhDzxwU0.webp" )


# Companies
company1 = Company.create(
    name: "Capital Bike Share",
    start_price: 1.00,
    price_per_minute: 0.05,
    link_to_app: "https://www.capitalbikeshare.com/",
    link_to_website: "https://www.capitalbikeshare.com/",
    fetch_url: "https://gbfs.capitalbikeshare.com/gbfs/en/station_information.json"
    )

company2 = Company.create(
    name: "JUMP Bikes",
    start_price: 1.00,
    price_per_minute: 0.35,
    link_to_app: "https://www.jump.com/",
    link_to_website: "https://www.jump.com/",
    fetch_url: "https://gbfs.uber.com/v1/dcb/free_bike_status.json"
    )

company3 = Company.create(
    name: "Helbiz",
    start_price: 1.00,
    price_per_minute: 0.35,
    link_to_app: "https://www.helbiz.com/",
    link_to_website: "https://www.helbiz.com/",
    fetch_url: "https://api.helbiz.com/admin/reporting/washington/gbfs/free_bike_status.json"
    )




route6=Route.create(name: 'Baltimore, & Annapolis Trail', source: 'http://bikewashington.org/trails/ba/ba.htm',
    short_description: "Nice trail between Annapolis and Glen Burnie. Connects to the BWI Trail. Recommended ride for beginners.", 
    description: 'The Baltimore and Annapolis Trail (B&A) is a nice trail for the whole family, but a bit of a drive from the D.C. Area. 
    This trail is part of the East Coast Greenway.
    <br /> The trail has about an 8-foot wide paved surface and is in good condition. The total length is 13 miles between Annapolis and 
    Glen Burnie, MD. Once you reach the northern terminus, a short connector path will take you over to the recently completed BWI Trail.
    The southern half of the trail cuts through some nice suburban neighborhoods. As you head farther north, the terrain becomes much more 
    urban. The path goes right past Marley Station Mall before taking you into downtown Glen Burnie. At this point, the B&A right-of-way is taken 
    over by Baltimore Light Rail. However, you can continue biking another 12 miles by using the new BWI Trail network.
    Food is plentiful along the way, with stops available in Severna Park and Pasadena.<br /> The southern trail head provides the easiest access from 
    Washington. Just take Route 50 out past Annapolis. After crossing the Severn River, take the first exit ramp, exit 27, to Route 450. There is parking 
    area just a few hundred yards from the ramp. It is hard to see and you will probably drive past it. The lot is not very large and so it can fill up fast 
    on nice days. <br />  The northern trail head in Glen Burnie lies about 1 mile east of the I-97 / Dorsey Road Exit. It appears that parking may be available 
    at Sawmill Creek Park and a senior citizen center, both located along Dorsey Road between I-97 and the trail. (Check signs for parking restrictions). 
    If all else fails, you can park at the Dixon Observation Park, which is located about 1 mile WEST of I-97 on Dorsey Road. The B&A trails is easily reach 
    from these parking areas using the BWI Trail Spur.',
    google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
    image_url: "https://blog.mapmyrun.com/wp-content/uploads/2017/06/10-Ways-Biking-Makes-You-a-Better-Person.jpg", 
    length: 13, 
    surface: 'Paved', 
    difficulty: 'Easy', 
    tips: 'add some tips by leaving a review')



route7=Route.create(name: 'BWI Trail',source: 'http://bikewashington.org/routes/bwi/index.htm',
    short_description: "Cool loop trail around Baltimore-Washington International Airport.", 
    description: "The next time you are out near BWI Airport, you might like to check out 
    the area's newest trail. Designed primarily with commuters in mind, the 11 mile BWI trail 
    is also an excellent recreation facility.
    Many trail sections are surprising peaceful, despite the close proximity to airport runways. 
    The ride through Friendship Parks young 
    pine forest is very pleasant. Andover Park, at the north side of the airport, provides a great overlook of the general aviation 
    runway.<br /> The best way to reach the BWI trail is by bike! A short trail spur provides access to the popular B&A Rail Trail 
    running between Glen Burnie and Annapolis. 
    If you prefer to drive to the trail, then a good parking area is the Dixon Observation Park (about one mile west of I-97 Exit 15 on 
    Dorsey Rd). On nice days, this lot will fill up quickly. When this happens, additional parking is available just east of I-97 along 
    the trail spur. Make sure you bring along enough food and drink, since there are no stores along the path. If you get in a bind, I am 
    pretty sure vending machines are available at the Amtrak Station. Rest rooms are available at Andover Park and the Amtrak Station. 
    <br />  If you are coming from Washington, take I-95 North from the Capital Beltway. Use Exit 47 for I-195 toward BWI. After about 
    4 miles, take the first exit for Aviation Blvd, Rt 170 (Amtrak Exit). Follow Rt 170 for about 2 miles, then make a left onto Dorsey 
    Road, Rt 176 at the light. The Dixon Observation Park is on the right, about two miles down Dorsey Road.", 
    google_map: "http://bikewashington.org/trails/vernon/photo2.jpg",
    image_url: "https://www.sunset.com/wp-content/uploads/1422e4f0e374bcaad442c74d75077469-968x537-c-default.jpg", 
    length: 11,
    surface: 'Paved',
    difficulty: 'Easy',
    tips: 'add some tips by leaving a review')

route8=Route.create(name: 'Capital Crescent Trail',source: 'http://bikewashington.org/trails/cct/cct.htm',
    short_description: "The very popular CCT is another great rail trail project. The paved section runs from Georgetown to Downtown 
    Bethesda. The remain section has a crushed limestone surface.",
    description: "The Capital Crescent Trail (CCT) is a rail trail project running though the Northwest D.C. Area. On weekends, it is a 
    VERY popular spot for local cyclists and rollerbladers. During weekdays, bike commuters use the CCT to travel between Downtown DC and 
    the Northwest Suburbs.
    The southern 7 miles between Georgetown and Bethesda has a 9-foot wide asphalt surface and is in excellent condition. The northern 
    Georgetown Branch extension provides a crushed gravel surface for the final 4 miles between Bethesda and Silver Spring. The two trails 
    are connected by a brand new tunnel located under downtown Bethesda.  <br /> The trail starts in Georgetown at the western end of Water 
    Street N.W. (Right underneath the Whitehurst Freeway and Key Bridge). The first three miles offers some wonderful views as it follows the 
    mac River and the C & O Canal. The trail then crosses Canal Road and heads north through some really up scale neighborhoods. 
    Overpasses are now in place at the busier crossings (including the new River Road overpass) and a tunnel takes you under MacArthur Blvd.
     The paved trail abruptly ends at Bethesda Ave., about 2 blocks west of Wisconsin Ave. This entire section has a pretty good 
     gradual uphill climb, with the ""steepest"" incline about the midpoint.  <br /> After arriving in Bethesda, you can pass through the 
     Wisconsin Avenue Tunnel and continue westward on the CCT's Georgetown Branch Trail. This interim extension follows a hotly debated 
     right-of-way through some very exclusive properties, including Columbia Country Club. Since the future of this is still up in the air 
     (a Trolley Line is planned), this section of the trail currently has a less expensive crushed gravel surface. Therefore it may not be 
     desirable for skinny tires. <br/> In May 2003, the trail's newest feature was opened to the public. The long awaited Rock Creek Trestle
      now carries the Georgetown Branch Trail 80 feet above the Rock Creek valley. Soon after crossing over the trestle, the trail abruptly 
      ends about a mile short of downtown Silver Spring. Until the trail can be extended, this map shows a suggested on-street connection to
       downtown Silver Spring.<br /> Since the trail is built on a former rail line, the average grade is relatively small. However, the 
       section between Fletchers Boathouse and River Road does have a pretty good climb. Depending on your physical condition, you may 
       expect a good workout along this section. The highest point of the trail is in downtown Bethesda, the location of the new Wisconsin 
       Avenue Tunnel.",
       google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
       image_url: "https://res.cloudinary.com/simpleview/image/upload/v1563915967/clients/capecodma/Biking_e8a6a7d3-163d-46a1-a875-2be497658b2b.jpg",
       length: 11,
       surface: 'Mixed',
       difficulty: 'Easy',
       tips: 'add some tips by leaving a review')

route9=Route.create(name: 'Chesapeake & Ohio Towpath',
    source: 'http://bikewashington.org/canal/index.htm',
    short_description: "My favorite trail in the area, it runs from Washington DC all the way to Cumberland, MD. 
    Watch for future extension to Pittsburgh, PA!",
    description: "The 184.5 mile long Chesapeake & Ohio Canal is located along the north bank of the Potomac River, 
    starting in Washington, DC and ending in Cumberland, MD. The canal was built between 1828 and 1850, and it operated 
    sporadically between floods until 1924. In 1954, US Supreme Court Justice William O. Douglas organized an eight day 
    hike up the canal's towpath in an effort to save it from being converted to a parkway. His efforts succeeded, and in 
    1971 the canal became a National Historic Park.
    Today, much of the canal has been drained of water and reclaimed by the forest. However, the canal's towpath remains a 
    favorite of hikers, joggers, and bicyclists. Like myself, many local cyclists have considered trying to bike the entire 
    184 miles between Georgetown and Cumberland, MD. I started biking large sections of the lower 60 miles with high school 
    buddies back around 1981. Since then, I've completed five through trips. Thanks to the new Great Allegheny Passage Trail, 
    it is now possible to ride 330 traffic free miles from Washington, DC all the way to Pittsburgh, PA, as we did in 2007. You 
    can also read about my earlier trips in 1995, 2003, and 2004.<br /> Before you start out on your epic journey, I strongly 
    recommend trying some shorter trips to prepare yourself. The towpath is not paved (the surface is typically clay and crushed stone), 
    so it is a bit rough. Therefore, you will need to build up some calluses on your butt before starting out (no joke). The first 20
     miles is the most heavily used and is a good place to practice.", 
     google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
     image_url:"https://static01.nyt.com/images/2019/11/19/well/physed-bike/physed-bike-articleLarge.jpg?quality=75&auto=webp&disable=upscale",
     length: 184,
     surface: 'Mixed', 
     difficulty: 'Easy', 
     tips: 'add some tips by leaving a review')


     

route5=Route.create(name: 'Cross Island Trail',source: 'http://bikewashington.org/trails/crossIsland/index.htm',
    short_description: "New trail running across Kent Island. Nice stop for when heading to the beach. Recommended ride for beginners.",
    description: "In September 2001, Queen Anne's County opened this nice little trail running 
    across Kent Island. The Cross Island Trail starts in the Terrapin Nature Area (located directly across the bay from Sandy Point Beach) and runs all the way to Kent Narrows. 
    This wide, paved trail offers some nice views of the Chesapeake Bay and the surrounding forests of Kent Island. The county has also constructed a couple of nice bridges along 
    the trail which offer great views of the local waterways.
    Kent Island is less than an hour drive from the Capital Beltway, so this would make a nice family day trip. If your family makes the annual ""beach pilgrimage"", then this trail 
    would also provide a great diversion to break up the long ride. In addition to bicycling, there are also over 2 miles of hiking trails in the Terrapin Nature Area, located at 
    the western end of the bike trail. After your ride, you can enjoy one of the many restaurant located near the path. Although Queen Anne County has done are really great job with 
    this trail, there are a few issues. First, it is only 5 miles long. This makes it perfect for a family outing, but not much of a draw for more experienced riders. Also, the trail 
    has rather large number of stop signs, some of which are questionable placed. For example, I counted at least 6 stop signs in one quarter mile section. In my opinion, many of these 
    crossings (like the ones located in parking areas), should be directed toward cars instead of making bikes stop every few yards. Poorly placed stop signs simply encourage cyclist to 
    disregard the law. Even more annoying are the ""Biker Dismount"" signs located at each crossing. Since these signs are yellow, I assume they are only a suggestion. However, I could 
    not wonder why they did not also have signs at each crossing asking inline skaters to ""Remove Skates before Crossing"".
    Reaching the trail is quite easy:
    From the Capital Beltway (I-495), take Route 50 east past Annapolis
    After crossing over the Bay Bridge ($2.50 toll eastbound only), take the first exit, Route 8 Stevenville.
    At the top of the exit ramp, make a left onto Route 8 at the light, crossing over Route 50.
    At the next traffic light (Skipjack Pkwy), make a left into Chesapeake Bay Business Park.
    The road will come to a tee. Make a left here and follow the circle road around the Business park to the Terrapin Nature Area.
    As an alternative, you can also follow Route 50 across the island and exit at Kent Narrows. There is ample parking here underneath the Route 50 bridge, located right next to the trail.",
    google_map: 'http://bikewashington.org/trails/crossIsland/slide3.jpg',

    image_url: "https://www.floridashistoriccoast.com/imager/s3_us-east-1_amazonaws_com/st-augustine-2019/images/Sports-Outdoors/COUPLE_ON_BIKES_1059925dafc489659acd47a728e6733c.jpg",
    length: 5,
    surface: 'Paved',
    difficulty: 'Easy',
    tips: 'add some tips by leaving a review')

route4=Route.create(name: 'Mount Vernon Trail',source: 'http://bikewashington.org/trails/vernon/vernon.htm',
    short_description: "Very scenic trail that runs along the Potomac River to George Washington's estate at Mount Vernon. Recommended ride for visitors.",
    description: "Located just across the river from Downtown Washington D.C. is a great multi-use recreation trail. Nearly 18 miles long, the Mount 
        Vernon Trail follows the Potomac's Virginia shoreline from Theodore Roosevelt Island (near Rossyln, Va) to George Washington's Estate located at Mount Vernon.
        The Mount Vernon Trail is a big favorite of area cyclists. The trail offers wonderful views of the Potomac and DC monuments. There are also several 
        points-of-interest along the way, including George Washington's home at Mount Vernon, Olde Town Alexandria, Arlington National Cemetery, and the local's 
        favorite Gravelly Point (at the north end of National Airport's main runway). <br /> The trail is some what tricky to follow as it passes through Alexandria 
        because there are actually two route choices, both of which are on street. The more popular route is along the waterfront, via Union Street. There are several 
        shops and restaurant around the King Street intersection. However, some may find that North Royal Street provides a more direct route. Either street route is 
        quite bicycle friendly. <bd /> For the most part, the trail is fairly flat with an occasional rolling hill here and there. However the last mile heading toward 
        Mount Vernon has a pretty good climb. Once you reach the northern end at Roosevelt Island, you can either turn around and head back south, or you can cross 
        the footbridge over the parkway and head west on the Custis Trail. This will take you to the W&OD Trail, a 45 mile long rail trail through Northern Virginia. 
        <br /> For the most part, the trail is fairly flat with an occasional rolling hill here and there. However the last mile heading toward Mount Vernon has a pretty 
        good climb. Once you reach the northern end at Roosevelt Island, you can either turn around and head back south, or you can cross the footbridge over the parkway 
        and head west on the Custis Trail. This will take you to the W&OD Trail, a 45 mile long rail trail through Northern Virginia.",
    google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
    image_url: "https://www.sunset.com/wp-content/uploads/1422e4f0e374bcaad442c74d75077469-968x537-c-default.jpg", 
    length: 18,
    surface: 'Paved',
    difficulty: 'Moderate',
    tips: 'add some tips by leaving a review')

route3=Route.create(name: 'North Bethesda Trail',source: 'http://bikewashington.org/trails/bethesda/bethesda.htm',
    short_description: "This trail provides an excellent commuter connection between Rockville and Bethesda.",
    description: "The North Bethesda Trail is a new project currently under construction between Bethesda and Rockville, Maryland. Previously known as the 
    Bethesda Trolley Trail, this project will upgrade and connect several existing trails into a very nice 4 mile long commuter route and greatly improve access 
    to the popular Capital Crescent Trail (CCT). <br /> The major feature of this trail are two overpasses which will span Interstates 270 and 495 (the Capital Beltway). 
    For many decades, these two interstates have been a huge impediment to north-south bicycle travel in this congested area of Montgomery County. Construct of these two 
    overpass projects took an amazingly long time (due to subcontractor problems). However in July 2003, the bridges were finally completed and opened to traffic.<br /> Unfortunately, 
    funding for the actual trail reconstruction was diverted to the Forest Glen Metro overpass project. As a result, the severely sub-standard trail sections will not be upgraded until at 
    least 2005. However, the back streets along this corridor already provide excellent bicycle access between Bethesda and Rockville, regardless of whether the trail sections are complete
    <Br /> The trail will roughly parallel Rockville Pike (Rt 355), the MetroRail Red Line, and the Rock Creek Trail. Although the Bethesda Trail appears somewhat redundant, it will be a much 
    improved facility that should encourage bike commuting between Rockville and Bethesda. The narrow and winding Rock Creek Trail is located at the bottom of a fairly deep creek valley. 
    A cyclist must ride down to the trail, and then climb back out of the valley to reach their destination. Because it follows a long forgotten trolley line, the new North Bethesda 
    Trail is relatively straight and flat, and thus should significantly reduce bicycle travel time.<br /> Although the North Bethesda Trail will greatly improve access to the Capital 
    Crescent Trail (and thus Downtown DC), some on-street riding will still be required. However, most of the streets in this section are fairly bike friendly. (Suggested Route)",
    google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
    length: 4,
    surface: 'Paved',
    difficulty: 'Easy',
    tips: 'add some tips by leaving a review')

route13=Route.create(name: 'Northern Central Rail Trail',source: 'http://bikewashington.org/trails/ncr/ncr.htm',
    short_description: "Excellent rural trail running from Ashland, MD to downtown York, PA.", 
    description: "The Northern Central Railroad (NCR) and York County Heritage (YCH) combine to create a simply an awesome trail. Despite its proximity to Baltimore, this 41 mile long trail follows nearly all rural terrain (with much of it along side Gunpowder Falls River). The surface is fine crushed gravel and is in generally good condition. The trail is also well shaded, so it is nice even on the hottest summer days.<br /> The NCR trail begins in the small community of Ashland, Maryland. It continues north for 20 miles to the Mason-Dixon Line. Here, it enters Pennsylvania and becomes the YCH. The trail then continues another 21 miles north to York, PA. (This includes the newly opened 10 mile section between York and Hanover Junction.)
    The trail is easily accessible from I-83. The southern trail head begins at a small neighborhood called Ashland, which is just off York Road in Cockeysville, Md. Parking here is typically tight, so most people park along Paper Mill Road, about a half mile north of the start. Parking is also available at several other points along the trail.
    The southern 10 miles is quite flat. Once you approach Parkton, the trail begins a pretty good climb up to New Freedom, the highest point on the trail. (However, this 2-3% grade is nothing compared to the surrounding hilly terrain). From New Freedom, the trail begins a continuous decent to the northern terminus.
    The NCR is quite rural, so make sure you bring along enough food and drink. In Maryland, the only real food stop is at a small general store in Monkton (around mile 8). The trail's visitor center is also located here. There are picnic tables located every mile or so.
    In Pennsylvania, the YCH provides amenities every few miles. There is also an operational parallel railway adjacent to the trail, which is used as a hobbyist / tourist attraction between York and New Freedom.
    For further details, refer to one of the detailed map sections.",
    google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
    length: 41,
    surface: 'Gravel',
    difficulty: 'Difficult',
    tips: 'add some tips by leaving a review')

route14=Route.create(name: 'Rock Creek Hiker/Biker Trail',source: 'http://bikewashington.org/trails/rockcreek/md.htm',
    short_description: "A loose collection of paths that were eventually linked together. Not too bad in Maryland, but the DC section does leave something to be desired. 
    The DC on-road section is closed to traffic on weekends.",
    description: "Maryland's 14 mile long Rock Creek Trail is a collection of paved multi-use paths through southern Montgomery County. Although this area is mostly urbanized, the trail follows a mainly wooded route along the Rock Creek stream valley. As a result, the trail provides a nice traffic-free route between Rockville and the Bethesda/Silver Spring business districts.
    The northern trail head is located in Lake Needwood Regional Park, just a few miles east of downtown Rockville. The trail ends at the Washington DC. border, where Beach Drive enters the District.
    Despite the trail's convenient location, it does have a number of problems. Many sections are narrow and winding. Since the terrain is heavily wooded, debris often covers the trails. As a result, the trail is not the most efficient route for commuting. The trail also suffers from an extreme lack of directional signs. In a number of places, it is very difficult to determine the ""main"" trail route. Expect to take a couple of accidental side trail detours when you first ride this trail.
    However, despite its shortcomings, the trail is pretty nice if you are just out for a nice ride.",
    google_map: 'http://bikewashington.org/trails/rockcreek/md.gif.pagespeed.ce.eWdlm53mnZ.gif',
    length: 20,
    surface: 'Paved',
    difficulty: 'Moderate',
    tips: 'add some tips by leaving a review')

route2=Route.create(name: 'Sligo Creek and Branch Trails',source: 'http://bikewashington.org/trails/branches/index.htm',
    short_description: "Maryland's Anacostia Tributary Trails start near Mt Rainier, and provides connections to Wheaton, College Park, and Greenbelt",
    description: "Located just outside DC's northeast border, this group of paved trails wind along the small stream valleys which feed the Anacostia River.  Although the trails are a bit too narrow and windy for effective commuting, they do provide some nice recreational rides.
    Major points of interest include: University of Maryland, Wheaton Regional Park
    Greenbelt Park",
    google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
    length: 20,
    surface: 'Paved',
    difficulty: 'Moderate',
    tips: 'add some tips by leaving a review')

route16=Route.create(name: 'The Custis Trail',source: 'http://bikewashington.org/trails/wad/custis.htm',
    short_description: "The Custis Trail runs parallel to I-66 through Arlington, VA. It connects the W&OD trail with downtown Washington DC.",
    description: "Although the W&OD trail is a great facility, it does not quite get you to the downtown DC area. Instead, it ends in Shirlington, 
    VA, which is about 6 miles (as the bike rolls) from downtown. As a result, the Martha Custis trail provides a very useful short cut for area cyclists.
    Unlike the W&OD, the Custis Trail is not a Rail-to-Trail conversion. As a result, you can expect a few moderate climbs and winding turns over the trail's 
    four mile length. There are also a few spots were sight lines are limited, so be sure to use caution. However, one really nice feature of the Custis Trail 
    is that there are almost no grade crossings. There are only three crossings along the eastern most quarter mile of the trail. Arlington does a pretty good job 
    at signing many of the trails in their county. However, signs are known to become ""misplaced"" from time to time. As a result, folks may sometimes have trouble 
    locating the Custis trail. For cyclist on the W&OD, the Custis intersects at almost exactly the 4.0 mile marker. There is also a wild flower park and a 
    covered bench at this location. After turning onto the Custis Trail, you will almost immediately come to a four-way path intersection. At this point the 
    Custis Trail runs under I-66 and continues along the north side of the interstate for most of it's length. Coming from the downtown area, the Custis trail 
    is practically an extension of the Mount Vernon Trail. Upon reaching Theodore Roosevelt Island, simply follow the foot bridge over the GW Parkway. At the 
    top of hill, you reach the intersection of Lee Hwy and Lynn Street in Rossyln, VA. The Custis trail begins here as a wide sidewalk running along Lee Hwy 
    and passing in front of the Key Bridge Marriott. After passing the hotel, the trail changes to an asphalt surface as you begin a fairly steep climb. At the top of the hill, 
    cross over I-66, and then hang a right to remain on the Custis as it follows along the interstate.",
    google_map: 'http://bikewashington.org/trails/vernon/photo2.jpg',
    length: 4,
    surface: 'Paved',
    difficulty: 'Difficult',
    tips: 'add some tips by leaving a review')

route1=Route.create(name: 'Washington & Old Dominion Trail',source: 'http://bikewashington.org/trails/wad/wad.htm',
    short_description: "The W&OD (pronounced 'wad') is probably the best all around trail in the area. This is a rail trail between Shirlington and Purcellville, VA.",
    description: "The Washington & Old Dominion Trail (W&OD or ""Wad"") is a great rail trail through the Northern Virginia counties. The entire 45 miles is paved with nine foot 
    wide asphalt and has a painted yellow center line. There is also a parallel horse trail along much of the trail (which can be a nice diversion for ATBs). The only real complaints 
    about this trail are its popularity (it can be quite crowded on some days) and the fact that much of it follows a power line right-of-way. <br /> The W&OD Trail begins in the 
    Shirlington area of Arlington County, just off I-395 Exit 6. It ends ""way-out"" in rural Purcellville, VA. Along the way, it passes through quaint villages like Falls Church and 
    Leesburg, and high-tech centers such as Reston and Herndon.<br  />
    For those planning to ride the entire trail, your total round trip distance will be a whopping 90 Miles. If this sounds a bit much for you, consider breaking the ride into two days. 
    There are numerous hotels and B&Bs listed on the following pages.",
    google_map: "http://bikewashington.org/trails/vernon/photo2.jpg",
    length: 45,
    surface: 'Paved',
    difficulty: 'Difficult',
    tips: 'add some tips by leaving a review')



review1 = Review.create(user_id: user1.id, route_id: route1.id, rating: 4, comments: "My favorie roue in dc!")
review2 = Review.create(user_id: user2.id, route_id: route1.id, rating: 2, comments: "A harder route than it looks! bring extra water!")

favComp1 = UserCompany.create(user_id: user1.id, company_id: company1.id, favorite: true )
favComp2 = UserCompany.create(user_id: user1.id, company_id: company2.id, favorite: true )
favComp3 = UserCompany.create(user_id: user1.id, company_id: company3.id, favorite: false )


favorite1 = FavoriteRoute.create(user_id: user1.id, route_id: route3.id, favorite: true)
favorite2 = FavoriteRoute.create(user_id: user1.id, route_id: route9.id, favorite: true)
favorite3 = FavoriteRoute.create(user_id: user1.id, route_id: route4.id, favorite: true)


completed1 = CompleteRoute.create(user_id: user1.id, route_id: route1.id, completed: true )
completed2 = CompleteRoute.create(user_id: user1.id, route_id: route5.id, completed: true )
completed3 = CompleteRoute.create(user_id: user1.id, route_id: route7.id, completed: true )
completed4 = CompleteRoute.create(user_id: user1.id, route_id: route9.id, completed: true )



journal1 = Journal.create(user_id: user1.id, date: "2020-06-01",duration: 90, distance: 22, difficulty:"Moderate", calories:450, notes:"Tough ride!" )
journal2 = Journal.create(user_id: user1.id, date: "2020-06-02",duration: 50, distance: 15, difficulty:"Moderate", calories:350, notes:"Nice weather" )
journal3 = Journal.create(user_id: user1.id, date: "2020-06-04",duration: 35, distance: 12, difficulty:"Easy", calories:200, notes:"legs hurt!" )
journal4 = Journal.create(user_id: user1.id, date: "2020-06-05",duration: 125, distance: 25, difficulty:"Difficult", calories:600, notes:"Nothing interesting oday!" )
journal5 = Journal.create(user_id: user1.id, date: "2020-06-07",duration: 25, distance: 6, difficulty:"Easy", calories:150, notes:"Ride to work!" )
journal6 = Journal.create(user_id: user1.id, date: "2020-06-08",duration: 84, distance: 16, difficulty:"Easy", calories:250, notes:"Biked over to Georgetown." )


trip1 = Trip.create(user_id: user1.id,trip_name: "DC to Pittsburgh",trip_start: "2020-06-02",trip_end: "2020-06-05",notes: "My first trip!")
trip2 = Trip.create(user_id: user1.id,trip_name: "KS to NE",trip_start: "2020-04-02",trip_end: "2020-04-08",notes: "A group trip through the mid west.")
trip3 = Trip.create(user_id: user1.id,trip_name: "DC to Richmond",trip_start: "2020-04-02",trip_end: "2020-04-08",notes: "A group trip through the mid west.")
