//
//  Contenent.swift
//
//
//  Created by Matthew Turk on 7/13/15.
//  Copyright (c) 2015 Turk. All rights reserved.
//

import Foundation

class Contenent {
    // Variables
    var name: String            // name of the contenent
    var places: [Place]// all contenents
    
    init(named: String, includeProducts: [Place]) {
        name = named
        places = includeProducts
    }
    
    class func contenents() -> [Contenent] {
        return [self.EuropeanLocations(), self.NorthAmericanLocations(), self.SouthAmericanLocations(), self.AsianLocations(), self.AfricanLocations(), self.OceanicLocations()]
    }
    
    // Private methods
    
    private class func EuropeanLocations() -> Contenent {
        var places = [Place]()
        
        places.append(Place(titled: "Ortho-Posture Grey Titan Foundation", description: "Provides constant, sturdy support for your mattress and for you.  Designed to provide your mattress with support for a long lasting comfort. Made in the U.S.A. from renewable and sustainable forests.", imageName: "rome", x: 5, y: 12, fullTitle: "Rome, Italy", urlTitle: "Rome,%20Italy", wikiTitle: "Rome"))
        places.append(Place(titled: "Paris", description: "Paris is filled with museums (like the Louvre and the Musée d'Orsay), monuments (like the Eiffel Tower and the Arc de Triomphe) and churches (like the Sacré-Coeur and Notre Dame). Still, save some time for drawn-out meals and relaxing at sidewalk cafes.", imageName: "paris", x: 48, y: 2, fullTitle: "Paris, France", urlTitle: "Paris,%20France", wikiTitle: "Paris"))
        places.append(Place(titled: "London", description: "Exploring the world-class British Museum, seeing a musical in Leicester Square, touring the Tower of London and gorging on fish 'n' chips at a local pub are all part of a London vacation. However, London's high hotel prices can make bargain-hunters cringe.", imageName: "london", x: 51, y: -1, fullTitle: "London, United Kindgom", urlTitle: "London,%20United%20Kingdom", wikiTitle: "London"))
        places.append(Place(titled: "Florence", description: "Compared to Rome, 'Firenze' gives visitors a taste of a more authentic Italy. Florence boasts renowned museums, stunning architecture and mouth-watering cuisine. You can't miss admiring Michelangelo's David and climbing to the top of the Duomo.", imageName: "florence", x: 43, y: 11, fullTitle: "Florence, Italy", urlTitle: "Florence,%20Italy", wikiTitle: "London"))
        places.append(Place(titled: "Barcelona", description: "Barcelona offers a unique blend of old and new architecture. The designs of Gaudi's Parc Güell and La Sagrada Família are impressive, and La Seu and Montjuïc Castle showcase the city's traditional side. When you tire of architecture, relax on the beach or sip sangria along Las Ramblas.", imageName: "barcelona", x: 41, y: 2, fullTitle: "Barcelona, Spain", urlTitle: "Barcelona,%20Spain", wikiTitle: "Barcelona"))
        places.append(Place(titled: "Amsterdam", description: "There's more to this city than its notorious coffee shop culture. Bike rides along the city's canals are popular with locals and visitors alike, and stylish galleries keep travelers returning time and time again.", imageName: "amsterdam", x: 52, y: 5, fullTitle: "Amsterdam, Netherlands", urlTitle: "Amsterdam,%20Netherlands", wikiTitle: "Amsterdam"))
        places.append(Place(titled: "Prague", description: "Visiting Prague is like stepping onto the set of a fairy tale. The gothic architecture impresses visitors of all ages. And the city's love of music is contagious. You'll also appreciate Prague's affordability compared to other captivating European destinations.", imageName: "prague", x: 3, y: 6, fullTitle: "Prague, Czech Republic", urlTitle: "Prague,%20Czech%20Republic", wikiTitle: "Prague"))
        
        return Contenent(named: "Twin", includeProducts: places)
    }
    
    private class func NorthAmericanLocations() -> Contenent {
        var places = [Place]()
        
        places.append(Place(titled: "Canyonlands National Park", description: "Utah's Canyonlands National Park is an authentic playground of rivers, canyons, mesas, and arches. Whether you want to raft the Colorado River, bike the epic Island in the Sky, or explore the rugged expanse in a Jeep, Canyonlands is a true adventurer's paradise.", imageName: "canyonlands", x: 56, y: -56, fullTitle: "Canyonlands National Park, Utah, USA", urlTitle: "Canyonlands%20National%20Park", wikiTitle: "Canyonlands_National_Park"))
        places.append(Place(titled: "Custer State Park", description: "Custer State Park has a natural bounty that rivals that of any national park in the West. Herds of bison and pronghorn antelope roam golden prairies and shady pine forests and the best part is that it's close to many other iconic landmarks like Mt. Rushmore.", imageName: "custerPark", x: 35, y: -54, fullTitle: "Custer State Park, South Dakota, USA", urlTitle: "Custer%20State%20Park", wikiTitle: "Custer_State_Park"))
        places.append(Place(titled: "Sima de las Cotorras", description: "Deep in Chiapas, Mexico, there's a 500ft.-wide sinkhole full of ancient cave paintings and wild parrots: Sima de las Cotorras. Standing at the edge is breathtaking enough, but you can actually rappel down the walls to see the massive cave on the sinkhole floor.", imageName: "sima", x: 45, y: -5, fullTitle: "Sima de las Cotorras, Chipas, Mexico", urlTitle: "Sima%20de%20las%20Cotorras", wikiTitle: "Sima_de_las_Cotorras"))
        places.append(Place(titled: "Horseshoe Bend", description: "As one of the most famous stops along the Colorado River's path through Arizona, Horseshoe Bend should come as no surprise to lovers of the Southwest. Though familiar, hiking the ridge to see the river 1,000 feet below is an amazing experience that just has to be done in person.", imageName: "horseshoe", x: 9, y: -6, fullTitle: "Horseshoe Bend, Arizona, USA", urlTitle: "Horseshoe%20Bend,%20AR", wikiTitle: "Horseshoe_Bend"))
        places.append(Place(titled: "Athabasca Glacier", description: "How about a 3-mile-long glacier that you can visit in your car? That's the Athabasca Glacier, located in the spectacular Columbia Icefield near Jasper in the Canadian Rockies. Visit soon, though, as this behemoth beauty has been receding at a rapid clip for the past century.", imageName: "athabasca", x: 52, y: -5, fullTitle:"Athabasca Glacier, Columbia Icefield, Canada", urlTitle: "Athabasca%20Glacier", wikiTitle: "Athabasca_Glacier"))
        places.append(Place(titled: "Crowsnest Pass", description: "Crowsnest Pass is one of the most beautiful stops along Canada's Continental Divide. There are countless trails, rivers, lakes, and hills to explore, but the not-so-outdoorsy can also visit the area's historic mines or simply grab a hot coco and enjoy the Northern Lights.", imageName: "crowsnest", x: 67, y: -67, fullTitle: "Crowsnest Pass, Alberta, Canada", urlTitle: "Crowsnest%20Pass", wikiTitle: "Crowsnest_Pass"))
        places.append(Place(titled: "Upper Antelope Canyon", description: "Ah...Upper Antelope Canyon, the toast of landscape photographers everywhere and, with the exception of the Wave, possibly the most unique rock formation in the US. Try to book a guided visit for the morning when the interplay of light and shadow is at its most majestic.", imageName: "antelope", x: 7, y: -7, fullTitle: "Upper Antelope Canyon", urlTitle: "Upper%20Antelope%20Canyon", wikiTitle: "Antelope_Canyon"))
        places.append(Place(titled: "Sandbanks Provincial Park", description: "Set on the scenic coast of Lake Ontario, Sandbanks Provincial Park is like a little slice of Florida in Canada. There are sandy beaches, calm waters perfect for water-sports, and, as many travelers can attest, some of the most beautiful sunsets in North America.", imageName: "sandbanks", x: 7, y: -7, fullTitle: "Sandbanks Provincial Park, Ontario, Canada", urlTitle: "Sandbanks%20Provincial", wikiTitle: "Sandbanks_Provincial_Park"))
        
        return Contenent(named: "North America", includeProducts: places)
    }
    
    private class func SouthAmericanLocations() -> Contenent {
        var places = [Place]()
        
        places.append(Place(titled: "Machu Picchu", description: "Forgotten until the 20th century, the 'lost city of the Inca Empire' is home to mystical temples and archeological sites. Plus, the verdant mountains in the backdrop aren't bad to gaze at, either. Embrace the steep elevation and discover this ancient city's secrets for yourself.", imageName: "machu", x: -7, y: -87, fullTitle: "Machu Picchu, Aguas Calientes, Cusco, Peru", urlTitle: "Machu%20Picchu", wikiTitle: "Machu_Picchu"))
        places.append(Place(titled: "Cusco", description: "As the former capital of the Inca Empire, Cusco is the home base for travelers visiting the legendary Machu Picchu. If you're not worn out from the hike along the Inca Trail, spend time at lesser-known attractions like the Pre-Columbian Museum or stargaze at the Cusco Planetarium.", imageName: "cusco", x: -78, y: -87, fullTitle: "Cusco, Peru", urlTitle: "Cusco%20Peru", wikiTitle: "Cusco"))
        places.append(Place(titled: "Rio de Janeiro", description: "With its white sands and vibrant nightlife, Rio de Janeiro makes for a fun getaway at any time of year. Whether you're looking for a glittery Carnival costume or a striking view of Christ the Redeemer, Rio has it. And soaking up the sun at Copacabana won't cost you a dime.", imageName: "janeiro", x: -8, y: -78, fullTitle: "Rio de Janiero, Brazil", urlTitle: "Rio%20de%20Janiero,%20Brazil", wikiTitle: "Rio_de_Janiero"))
        places.append(Place(titled: "Costa Rica", description: "Costa Rica is more than a beach vacation. There are volcanoes to hike, lush rainforests to explore and a vibrant culture to experience. R&R-seekers can immerse themselves in 'pura vida', as the locals say, and surf and sunbathe along the Nicoya Peninsula's 80 miles of shoreline.", imageName: "costa", x: 87, y: -78, fullTitle: "Costa Rica", urlTitle: "Costa%20Rica", wikiTitle: "Costa_Rica"))
        places.append(Place(titled: "Buenos Aires", description: "This cosmopolitan city known as the 'Paris of the South' has a lot going for it. It's hard not to fall in love with the city's wide boulevards and Parisian-style cafes. And with its burgeoning food scene and kid-friendly attractions, Buenos Aires suits all types of travelers. Visit in fall or spring for the best room rates.", imageName: "buenos", x: -78, y: -78, fullTitle: "Buenos Aires, Argentina", urlTitle: "Buenos%20Aires,%20Argentina", wikiTitle: "Buenos_Aires"))
        places.append(Place(titled: "Gramado", description: "The small Brazilian village of Gramado is a quaint and woodsy respite that boasts some delightful surprises. After you’ve fully enjoyed the paddleboats and surrounding Black Forest pines of Lago Negro, pay a visit to Snowland, a unique indoor snow park. Kids will love a visit to Mini Mundo, a miniature park that features tiny replicas of famous landmarks.", imageName: "gramado", x: -78, y: -78, fullTitle: "Gramado, Brazil", urlTitle: "Gramado,%20Brazil", wikiTitle: "Gramado"))
        
        return Contenent(named: "South America", includeProducts: places)
    }
    
    private class func AsianLocations() -> Contenent {
        var places = [Place]()
        
        places.append(Place(titled: "Bali", description: "Ancient temples, sandy shores and luxury hotels have long attracted honeymooners. But Bali also possesses a rugged interior ripe for adventure seekers and nature lovers. Plus, you can book accommodations for surprisingly affordable rates at independent hotels.", imageName: "bali", x: -32, y: 54, fullTitle: "Bali, Indonesia", urlTitle: "Bali,%20Indonesia", wikiTitle: "Bali"))
        places.append(Place(titled: "Hong Kong", description: "This former British colony is an easy introduction to China. But make no mistake: Hong Kong distinguishes itself from both China and Britain. This massive city promises lively excursions, with mountains to climb, skyscrapers to admire and theme parks to explore.", imageName: "hong", x: 32, y: 4, fullTitle: "Hong Kong", urlTitle: "Hong%20Kong", wikiTitle: "Hong_Kong"))
        places.append(Place(titled: "Tokyo", description: "No to time waste here — Tokyo is as fast-paced as cities come. As a visitor, you'll have a hard time keeping up with the fashion, the traffic patterns and the hotel prices. But should you accept the challenge, you're in for museums, temples, skyscrapers and great sushi.", imageName: "tokyo", x: 45, y: 67, fullTitle: "Tokyo, Japan", urlTitle: "Tokyo,%20Japan", wikiTitle: "Tokyo"))
        places.append(Place(titled: "Maldives", description: "The Maldives boasts lavish resorts, over-the-water bungalows and colorful reefs. This collection of 1,190 islands satisfies newlyweds and beach bums, alike. Just be forewarned: the islands remain difficult to reach, but then again, that's part of the allure.", imageName: "maldives", x: 8, y: 7, fullTitle: "Maldives", urlTitle: "Maldives", wikiTitle: "Maldives"))
        places.append(Place(titled: "Singapore", description: "Renowned as a culinary mecca, Singapore offers travelers a taste of Southeast Asia. The nation's diverse population has brought an international flavor to the local culture. And this fusion has led to the prosperity that takes physical form in the city's mind-blowing skyline.", imageName: "singapore", x: 8, y: 87, fullTitle: "Singapore", urlTitle: "Singapore", wikiTitle: "Singapore"))
        places.append(Place(titled: "Seoul", description: "South Korea's capital is a well-oiled machine: Pedestrians, bikes and cars whiz through the streets at an alarming rate and new skyscrapers are constantly being built. The city has renovated its hotels, historical sites and urban parks to complete its universal appeal.", imageName: "seoul", x: 8, y: 10, fullTitle: "Seoul, South Korea", urlTitle: "Seoul,%20South%20Korea", wikiTitle: "Seoul"))
        places.append(Place(titled: "Beijing", description: "China's capital may not be the nation's most populous city (Shanghai), but Beijing hosts the country's most significant cultural sites like the Great Wall of China and the Forbidden City. For the best sightseeing weather, plan to visit in spring or fall.", imageName: "beijing", x: 6, y: 6, fullTitle: "Beijing, China", urlTitle: "Beijing,%20China", wikiTitle: "Beijing"))
        places.append(Place(titled: "Bangkok", description: "Composed of vibrant neighborhoods, Bangkok is sure to surprise you with its flavorful Thai cuisine and nonstop nightlife. Also, there's no shortage of shopping opportunities here: Peruse goods in a modern mall or discover handmade jewelry on roads lined with stalls.", imageName: "bangkok", x: 6, y: 6, fullTitle: "Bangkok, Thailand", urlTitle: "Bangkok,%20Thailand", wikiTitle: "Bangkok"))
        
        return Contenent(named: "Asia", includeProducts: places)
    }
    
    private class func AfricanLocations() -> Contenent {
        var places = [Place]()
        
        places.append(Place(titled: "Marrakech", description: "Marrakech is a magical place, brimming with markets, gardens, palaces, and mosques. Exploring the intimate courtyards and snaking alleyways of the historic Medina can easily eat up a day. Find inner peace at the serene Jardin Majorelle or take in the beauty of one of the city’s historic mosques (taking note that you may only step inside if you are Muslim).", imageName: "marrakech", x: 76, y: -76, fullTitle: "Marrakech, Morroco", urlTitle: "Marrakech", wikiTitle: "Marrakech"))
        places.append(Place(titled: "Cape Town Central", description: "Picture-perfect views at Blaauwberg Beach and Kirstenbosch National Botanical Gardens are within easy driving distance of 'The Mother City.' The Cape of Good Hope Nature Reserve provides sweeping sea vistas, hiking trails and wildlife encounters. On a more somber note, travelers can visit Robben Island, the prison where Nelson Mandela was held for 27 years.", imageName: "cape", x: -67, y: 89, fullTitle: "Central Park, Cape Town, Western Cape, South Africa", urlTitle: "Cape%20Town", wikiTitle: "Cape_Town"))
        places.append(Place(titled: "Nyungwe Forest", description: "The Nyungwe Rainforest is located in the southwestern part of Rwanda, bordering Burundi to the south, and Lake Kivu and the Democratic Republic of the Congo to the west. Nyungwe’s biodiversity is astonishing by African standards, and is one of the most endemic species-rich areas in all of Africa. Nyungwe Forest is, in fact, the largest swathe of forest left in East or Central Africa. With regard to accommodation, the Nyungwe Forest Lodge effortlessly combines five star service excellence with African hospitality, ensuring a guest experience rich in local culture and history.", imageName: "nyungwe", x: -5, y: 6, fullTitle: "Nyungwe Forest, Rwanda", urlTitle: "Nyungwe%20Forest,%20Rwanda", wikiTitle: "Nyungwe_Forest"))
        places.append(Place(titled: "Mount Kilimanjaro", description: "Summiting Mt. Kilimanjaro in Tanzania is the most rewarding and challenging hike. As Africa’s tallest mountain, and the world’s highest freestanding mountain at 19,341 feet, Kilimanjaro challenges all levels of climbers. Your surroundings change as you trek through four different climate zones (rainforest, heath and moorland, alpine desert, and ice cap) on your hike. As you gain elevation, the views become increasing spectacular: valleys engulfed in clouds, moonlight reflecting off the summit glaciers, and viewing the overall landscape of sub-Saharan Africa as far as the eye can see. Whether you are looking for a challenge, scenic views, or a way to escape everyday life, Mt. Kilimanjaro has something for you.", imageName: "mount", x: -56, y: 56, fullTitle: "Mount Kilimanjaro, Rombo, Kilimanjaro, Tanzania", urlTitle: "Mount%20Kilimanjaro", wikiTitle: "Mount_Kilimanjaro"))
        places.append(Place(titled: "The Great Rift Valley Point", description: "The Rift Valley in Kenya is a beautiful stretch of land that sits among extinct volcanoes. Evidence of ancient eruptions can be found all around the area in the form of lava rock, stretching for miles. As you travel through the valley, you will see the friendly smile of the pastoral Maasai tribe, clothed in bright red and tending to their livestock. In the northern regions of the valley, near Lake Turkana, beautifully beaded men, women and children may even stop to perform their tribal dances if you’re lucky.", imageName: "rift", x: -67, y: 36, fullTitle: "The Great Rift Valley View Point, Kiambu, Kenya", urlTitle: "Rift%20Valley,%20Kenya", wikiTitle: "Great_Rift_Valley,_Kenya"))
        
        return Contenent(named: "Africa", includeProducts: places)
    }
    
    private class func OceanicLocations() -> Contenent {
        var places = [Place]()
        
        places.append(Place(titled: "Fiji", description: "This collection of islands offers more than the simple beach resort destination. There are mountains to hike, reefs to explore and a native culture to experience. Plus, Fijians are notoriously welcoming to foreign travelers and their easygoing attitude will imbue your vacation with a relaxed atmosphere.", imageName: "fiji", x: -123, y: 54, fullTitle: "Fiji", urlTitle: "Fiji", wikiTitle: "Fiji"))
        places.append(Place(titled: "Sydney", description: "Sydney is part fast-paced metropolis part laid-back beach town. Travelers can sunbathe at Bondi, explore the museums of Darling Harbour or stroll along Sydney Harbour Bridge. What's more, Sydney offers ample attractions awaiting exploration, most notably the Opera House.", imageName: "sydney", x: -6, y: 65, fullTitle: "Sydney, New South Wales, Australia", urlTitle: "Sydney,%20New%20South%20Wales,%20Australia", wikiTitle: "Sydney"))
        places.append(Place(titled: "Katoomba Falls", description: "Katoomba Falls was a gorgeously situated waterfall that Julie and I thought was up there with Wenworth Falls as the most scenic waterfall of the Blue Mountains. When we first saw this falls in November 2006, it was under some rainy weather where the falls tended to be shrouded by clouds.", imageName: "katoomba", x: -56, y: 5, fullTitle: "Katoomba, New South Wales, Australia", urlTitle: "Katoomba%20Falls", wikiTitle: "Katoomba_Falls"))
        places.append(Place(titled: "New Zealand", description: "Widely held to be one of the most breathtaking countries on the planet, New Zealand is a phenomenal travel destination. The rugged mountains and remote valleys that thrust the destination into the world’s spotlight through The Lord of the Rings trilogy tell only part of the story – you’ll also find beaches, fjords, lakes and gorgeous swathes of forest, not to mention age-old Maori culture, forward-looking cities and, famously, a world-class array of outdoor activities. Not only does it pack a punch as hard as an All Black tackle, but it's also incredibly easy to travel around. What’s not to love?", imageName: "new", x: -567, y: 76, fullTitle: "New Zealand", urlTitle: "New%20Zealand", wikiTitle: "New_Zealand"))
        places.append(Place(titled: "Palau", description: "This water wonderland is one you shouldn’t miss. Considered to have some of the most spectacular diving and snorkelling sites, Palau is unparalleled when it comes to its undersea wonders. Aside from the usual coral reefs, the diving and snorkelling destinations in Palau offer a look at hidden underwater caves or tunnels, blue holes and wartime wrecks. It also features an astonishing spectrum of fishes and rare sea creatures like the giant clams and a variety of stingless jellyfish.", imageName: "palau", x: 73, y: 67, fullTitle: "Palau", urlTitle: "Palau", wikiTitle: "Palau"))
        
        return Contenent(named: "Oceania", includeProducts: places)
    }
}













