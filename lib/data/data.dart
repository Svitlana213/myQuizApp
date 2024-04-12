import '../models/Category.dart';
import '../models/Question.dart';

List<Category> categories = [
  Category(
    'Music',
    'assets/music.jpg',
    [
      Question("Music helps plants to grow", true),
      Question("Mozart was Austrian", true),
      Question("Symphony 9 was written by Johann Sebastian Bach", false),
      Question("Michael Jackson was nicknamed 'The King of Pop'", true),
      Question("The Beatles were Paul, George, James, and Ringo", false),
      Question("Elvis Presley was called the king of rock and roll", true),
      Question("Liverpool airport is named after John Lenon and on the roof is painted the airport's motto, 'Above us, only sky'", true),
      Question("Ray Charles was born blind", false),
      Question("Billy Joel's full name is William Martin Joel", true),
      Question("Queen was formed in 1978", false),
    ],
  ),
  Category(
    'Films',
    'assets/films.jpg',
    [
      Question("'Frozen' is a movie from DreamWorks", false),
      Question("'Titanic' stars Kate Winslet and Leonardo DaVinci", false),
      Question("'The Sixth Sense' was based on a true story", false),
      Question("'Home Alone 2' came out in 1992", true),
      Question("Darth Vader said 'No, I Am Your Father' in Star Wars Episode V", true),
      Question("'The Matrix' was originally going to be called 'The Only Matrix'", false),
      Question("Tom Holland was not allowed to read the script of 'Avengers: Infinity War' due to previous spoilers", true),
      Question("'Back to the Future' was originally a movie about virtual reality", false),
      Question("Professor Xavier used Cerebro to find other mutants", true),
      Question("Steven Spielberg directed 'Schindler's List'", true),
    ],
  ),
  Category(
    'Psychology',
    'assets/psychology.jpg',
    [
      Question("Until the late XIX century, psychology was a part of philosophy", true),
      Question("Cognitive psychology is the scientific study of mental processes such as attention, language use, memory, perception etc", true),
      Question("The Functionalism school of Psychology was founded by Freud", false),
      Question("Introspection is the observation of one's own feelings, thoughts, etc", true),
      Question("Neurons are connected", false),
      Question("People with anorexia nervosa have an intense fear of gaining weight", true),
      Question("Sigmund Freud is considered the Father of Psychology", false),
      Question("Psychology only focuses on human behavior", false),
      Question("Depression is a real mental disorder", true),
      Question("Psychology is best defined as the study of mental illness and abnormal behaviour", false),
    ],
  ),
  Category(
    'Geography',
    'assets/geography.jpg',
    [
      Question("China is in Africa", false),
      Question("Vatican City is the smallest country in the world", true),
      Question("Rio de Janeiro is the capital of Brazil", false),
      Question("You only have to cross one country to get from North Korea to Norway", true),
      Question("The flags of Morocco and Saudi Arabia contain all of the same colors", false),
      Question("There are 2 non-rectangular country flags", false),
      Question("The Argentina-Chile border is longer than the China-Mongolia border", true),
      Question("South America has a larger population than North America", false),
      Question("Germany has more borders than Austria", true),
      Question("Toronto is capital of Canada", false),
    ],
  ),
  Category(
    'Literature',
    'assets/literature.jpg',
    [
      Question("Moby Dick was written by Herman Melville", true),
      Question("William Shakespeare's middle name is William", false),
      Question("The Odyssey by Homer is about Odysseus, a war hero from the Trojan War", true),
      Question("'A Tale of Two Cities' was the only novel written by Charles Dickens", false),
      Question("There is a sentence in Victor Hugo's 'Les Miserables' that is over 800 words long", true),
      Question("Severus Snape is an animagus in 'Harry Potter'", false),
      Question("'1984' by George Orwell was published in 1984", false),
      Question("Jack London is British", false),
      Question("Stephen King is known as The King of horror", true),
      Question("'Charlie and the Chocolate Factory' was written by Charles Dickens", false),
    ],
  ),
  // Add more categories here
];