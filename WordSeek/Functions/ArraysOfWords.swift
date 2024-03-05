//
//  ArraysOfWords.swift
//  WordSeek
//
//  Created by Jacob Holloway on 3/4/24.
//

import Foundation

struct WordList {
    let category: String
    let words: [String]
    
}

let wordLists = [
    WordList(category: "Nerd Words", words: nerdWords),
    WordList(category: "Colors", words: colorWords),
    WordList(category: "Vehicles", words: vehicles),
    WordList(category: "Emotions", words: emotions),
    WordList(category: "Animals", words: animalWords),
    WordList(category: "Fruits", words: fruitWords),
    WordList(category: "Musical Instruments", words: musicalInstruments),
    WordList(category: "Occupations", words: occupations)
]

let nerdWords = [
    "SWIFT", "GRID", "WORDS", "RANDOM", "FUNCTION", "VARIABLE", "CONSTANT",
    "SEQUENCE", "ITERATOR", "PROTOCOL", "DELEGATE", "CLOSURE", "ALGORITHM",
    "COMPILE", "DEBUG", "EXECUTE", "SYNTAX", "PARAMETER", "ARGUMENT",
    "CLASS", "STRUCTURE", "ENUMERATION", "ANNOTATION", "EXTENSION",
    "INHERITANCE", "POLYMORPHISM", "ABSTRACTION", "ENCAPSULATION",
    "FRAMEWORK", "LIBRARY", "ASYNC", "AWAIT", "CONCURRENCY",
    "THREAD", "LOOP", "CONDITION", "ARRAY", "DICTIONARY",
    "SET", "TUPLE", "OPTIONAL", "INTERFACE", "IMPLEMENTATION",
    "COMPUTATION", "INTEGRATION", "SPECIFICATION", "MANIPULATION",
    "CONFIGURATION", "DEPLOYMENT", "OPTIMIZATION", "NAVIGATION",
    "VALIDATION", "AUTHENTICATION", "AUTHORIZATION", "ENCRYPTION",
    "DECRYPTION", "DATABASE", "QUERY", "TRANSACTION", "CACHE",
    "SERVER", "CLIENT", "REQUEST", "RESPONSE", "PROTOCOL",
    "DOMAIN", "ROUTE", "ENDPOINT", "HEADER", "FOOTER",
    "TEMPLATE", "WIDGET", "COMPONENT", "ELEMENT", "TAG",
    "ATTRIBUTE", "PROPERTY", "METHOD", "EVENT", "LISTENER"
]
let colorWords = [
    "Red", "Blue", "Green", "Yellow", "Purple", "Orange",
    "Magenta", "Cyan", "Maroon", "Olive", "Navy", "Teal",
    "Lime", "Aqua", "Fuchsia", "Silver", "Gray", "Black",
    "White", "Crimson", "Indigo", "Violet", "Pink", "Gold",
    "Ivory", "Turquoise", "Beige", "Coral", "Peach", "Mustard",
    "Lavender", "Mint", "Burgundy", "Chartreuse", "Taupe", "Sienna",
    "Salmon", "Khaki", "Tan", "Azure", "Jade", "Bronze",
    "Plum", "Orchid", "Amber", "Cerise", "Rust", "Chocolate",
    "Charcoal", "Apricot", "Periwinkle", "Ochre", "Emerald", "Sapphire"
]
let animalWords = [
    "Dog", "Cat", "Elephant", "Lion", "Tiger", "Giraffe",
    "Zebra", "Hippo", "Rhinoceros", "Bear", "Wolf", "Fox",
    "Rabbit", "Deer", "Monkey", "Kangaroo", "Panda", "Koala",
    "Sloth", "Armadillo", "Leopard", "Cheetah", "Hyena", "Antelope",
    "Buffalo", "Camel", "Dingo", "Echidna", "Falcon", "Gorilla",
    "Hedgehog", "Iguana", "Jaguar", "Kookaburra", "Lemur", "Mongoose",
    "Narwhal", "Ocelot", "Penguin", "Quokka", "Raccoon", "Seal",
    "Turtle", "Uakari", "Vulture", "Walrus", "Xerus", "Yak",
    "Zebu", "Aardvark", "Bison", "Crocodile", "Duck", "Emu",
    "Flamingo", "Gibbon", "Heron", "Impala", "Jackal", "Kiwi",
    "Llama", "Marmoset", "Newt", "Ostrich", "Porcupine", "Quail",
    "Rattlesnake", "Skunk", "Tapir", "Umbrellabird", "Viper", "Wombat",
    "Xenopus", "Yellowjacket", "Zorilla"
]

let fruitWords = [
    "Apple", "Banana", "Cherry", "Date", "Elderberry", "Fig",
    "Grape", "Honeydew", "Ivory Melon", "Jackfruit", "Kiwi", "Lemon",
    "Mango", "Nectarine", "Orange", "Papaya", "Quince", "Raspberry",
    "Strawberry", "Tomato", "Ugli Fruit", "Vine Peach", "Watermelon", "Xigua",
    "Yellow Watermelon", "Zucchini", "Apricot", "Blackberry", "Cantaloupe",
    "Dragon Fruit", "Eggfruit", "Feijoa", "Guava", "Huckleberry",
    "Indian Fig", "Jujube", "Kumquat", "Lychee", "Mulberry", "Navel Orange",
    "Olive", "Persimmon", "Queen Anne Cherry", "Rambutan", "Star Fruit",
    "Tangerine", "Uva", "Valencia Orange", "White Currant", "Ximenia",
    "Yuzu", "Zapote", "Acerola", "Bilberry", "Currant", "Dewberry",
    "Elderberry", "Finger Lime", "Grapefruit", "Honeyberry", "Ita Palm",
    "Jaboticaba", "Kiwano", "Lingonberry", "Mandarin", "Nashi Pear",
    "Oval Kumquat", "Pitaya", "Quararibea Cordata", "Red Currant", "Soursop",
    "Tangelo", "Umbu", "Velvet Apple", "Winter Melon", "Xiangjiao",
    "Yellow Passionfruit", "Zalzalak"
]

let vehicles = [
    "Car", "Truck", "Motorcycle", "Bicycle", "Airplane", "Boat",
    "Scooter", "Helicopter", "Submarine", "Train", "Tram", "Van",
    "Bus", "RV", "ATV", "Snowmobile", "Yacht", "Sailboat", "Tank",
    "Shuttle", "Canoe", "Ferry", "Glider", "Kayak", "Limousine",
    "Minivan", "Monorail", "Paddleboat", "Parachute", "Raft",
    "Roadster", "Rocket", "Segway", "Skateboard", "Sled", "Taxi",
    "Tractor", "Trolley", "Unicycle", "Zeppelin"
]


let emotions = [
    "Happy", "Sad", "Angry", "Excited", "Nervous", "Relieved",
    "Anxious", "Joyful", "Depressed", "Grateful", "Jealous", "Curious",
    "Hopeful", "Scared", "Confident", "Ashamed", "Bored", "Surprised",
    "Disgusted", "Frustrated", "Content", "Overwhelmed", "Lonely", "Proud",
    "Eager", "Embarrassed", "Guilty", "Indifferent", "Amused", "Delighted",
    "Envious", "Impressed", "Optimistic", "Pessimistic", "Regretful", "Satisfied",
    "Sympathetic", "Terrified", "Thrilled", "Uneasy", "Vexed", "Wistful",
    "Zealous", "Apathetic", "Calm", "Elated", "Gloomy", "Irritated",
    "Melancholic", "Nostalgic", "Peaceful", "Rattled", "Restless", "Serene",
    "Vulnerable", "Wary", "Yearning"
]

let occupations = [
    "Accountant", "Actor", "Architect", "Astronaut", "Athlete", "Author",
    "Baker", "Barber", "Bartender", "Biologist", "Blacksmith", "Broker",
    "Butcher", "Carpenter", "Chef", "Chemist", "Clerk", "Coach",
    "Consultant", "Counselor", "Dancer", "Dentist", "Designer", "Detective",
    "Dietitian", "Diplomat", "Director", "Doctor", "Economist", "Editor",
    "Educator", "Electrician", "Engineer", "Entrepreneur", "Farmer", "Firefighter",
    "Florist", "Geologist", "Graphic", "Guide", "Hairdresser", "Historian",
    "Hygienist", "Illustrator", "Inspector", "Instructor", "Journalist", "Judge",
    "Lawyer", "Lecturer", "Librarian", "Mechanic", "Musician", "Nurse",
    "Optician", "Painter", "Pharmacist", "Photographer", "Physician", "Pilot",
    "Plumber", "Poet", "Policeman", "Politician", "Professor", "Programmer",
    "Psychologist", "Radiologist", "Realtor", "Receptionist", "Reporter", "Researcher",
    "Sailor", "Scientist", "Secretary", "Security", "Singer", "Sociologist",
    "Soldier", "Surgeon", "Tailor", "Teacher", "Technician", "Therapist",
    "Translator", "Tutor", "Veterinarian", "Waiter", "Writer", "Zoologist"
]


let musicalInstruments = [
    "Accordion", "Banjo", "Cello", "Clarinet", "Drums", "Flute",
    "Guitar", "Harmonica", "Harp", "Keyboard", "Lute", "Mandolin",
    "Maracas", "Oboe", "Organ", "Piano", "Recorder", "Saxophone",
    "Sitar", "Tambourine", "Triangle", "Trombone", "Trumpet", "Tuba",
    "Ukulele", "Viola", "Violin", "Xylophone", "Zither", "Bagpipes",
    "Balalaika", "Bassoon", "Bongos", "Castanets", "Conga", "Cornet",
    "Didgeridoo", "Dulcimer", "Fiddle", "Flugelhorn", "Gong", "Guqin",
    "Harpsichord", "Kalimba", "Kazoo", "Lyre", "Marimba", "Melodica",
    "Ocarina", "Panpipes", "Piccolo", "Sarod", "Shakuhachi", "Shehnai",
    "Sousaphone", "Tabla", "Timbales", "Timpani", "Udu", "Vibraphone",
    "Vina", "Whistle", "Zhonghu"
]



