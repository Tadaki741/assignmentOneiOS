//
//  DataList.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//

import Foundation
import CoreLocation

var dataList: [ProgrammingLanguage] = [

    ProgrammingLanguage(name: "JAVA", introducedYear: "1995", nameOfAuthor: "James Gosling", countryOrigin: "USA", imageName: "https://1000logos.net/wp-content/uploads/2020/09/Java-Emblem.jpg", application: "multi-purpose programming language"),
    ProgrammingLanguage(name: "PYTHON", introducedYear: "1990", nameOfAuthor: "Guido van Rossum", countryOrigin: "Netherland", imageName: "https://1000logos.net/wp-content/uploads/2020/08/Python-Emblem-1024x640.jpg", application: "multi-purpose programming language"),
    ProgrammingLanguage(name: "C++", introducedYear: "1980", nameOfAuthor: "Bjarne Stroustrup", countryOrigin: "USA", imageName: "https://www.nicepng.com/png/full/111-1116276_computer-science-i-syllabus-and-grading-policy-c.png", application: "focused on game programming"),
    ProgrammingLanguage(name: "C#", introducedYear: "2001", nameOfAuthor: "Anders Hejlsberg", countryOrigin: "Denmark", imageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/C_Sharp_wordmark.svg/1920px-C_Sharp_wordmark.svg.png", application: "windows desktop application"),
    ProgrammingLanguage(name: "MATLAB", introducedYear: "1984", nameOfAuthor: "Cleve Moler", countryOrigin: "USA", imageName: "https://logos-world.net/wp-content/uploads/2020/12/MATLAB-Symbol.jpg", application: "scientific calculations programming language"),
    ProgrammingLanguage(name: "JAVASCRIPT", introducedYear: "1995", nameOfAuthor: "Brendan Eich", countryOrigin: "USA", imageName: "https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png", application: "web functionality programming language"),
    ProgrammingLanguage(name: "PASCAL", introducedYear: "1970", nameOfAuthor: "Niklaus Wirth", countryOrigin: "Sweden", imageName: "https://alefragnani.gallerycdn.vsassets.io/extensions/alefragnani/pascal/9.5.1/1658077210084/Microsoft.VisualStudio.Services.Icons.Default", application: "multi-purpose programming language"),
    ProgrammingLanguage(name: "PHP", introducedYear: "1995", nameOfAuthor: "Rasmus Lerdorf", countryOrigin: "Denmark", imageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/2880px-PHP-logo.svg.png", application: "multi-purpose scripting language"),
    ProgrammingLanguage(name: "TYPESCRIPT", introducedYear: "2012", nameOfAuthor: "Microsoft", countryOrigin: "USA", imageName: "https://cdn3.iconfinder.com/data/icons/teenyicons-outline-vol-3/15/typescript-1024.png", application: "server side and client side language"),
    ProgrammingLanguage(name: "SWIFT", introducedYear: "2014", nameOfAuthor: "Apple Inc", countryOrigin: "USA", imageName: "https://cdn4.iconfinder.com/data/icons/logos-3/504/Swift-2-1024.png", application: "multi-purpose programming language"),
    ProgrammingLanguage(name: "RUBY", introducedYear: "1995", nameOfAuthor: "Yukihiro Matsumoto", countryOrigin: "Japan", imageName: "https://cdn0.iconfinder.com/data/icons/game-2-2/50/120-1024.png", application: "multi-purpose programming language"),
    ProgrammingLanguage(name: "LUA", introducedYear: "1993", nameOfAuthor: "Roberto Ierusalimschy", countryOrigin: "Brazil", imageName: "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/lua-1024.png", application: "multi-paradigm programming language"),
    ProgrammingLanguage(name: "GO", introducedYear: "2009", nameOfAuthor: "Robert Griesemer", countryOrigin: "Sweden", imageName: "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/go-1024.png", application: "programming language for developing desktop application"),
    ProgrammingLanguage(name: "PERL", introducedYear: "1987", nameOfAuthor: "Larry Wall", countryOrigin: "USA", imageName: "https://cdn1.iconfinder.com/data/icons/fs-icons-ubuntu-by-franksouza-/512/application-x-perl.png", application: "multi-purpose programming language"),
    ProgrammingLanguage(name: "ADA", introducedYear: "1983", nameOfAuthor: "Jean Ichbiah", countryOrigin: "France", imageName: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Ada_Mascot_with_slogan.svg/1920px-Ada_Mascot_with_slogan.svg.png", application: "high-level object-oriented programming language"),
    ProgrammingLanguage(name: "COBOL", introducedYear: "1959", nameOfAuthor: "Jean E.Sammet", countryOrigin: "USA", imageName: "https://static.javatpoint.com/tutorial/cobol/images/cobol-tutorial.png", application: "administrative system like bank, many other businesses"),
    ProgrammingLanguage(name: "RUST", introducedYear: "2010", nameOfAuthor: "Graydon Hoare", countryOrigin: "USA", imageName: "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/rust-1024.png", application: "write operation system  or functionality for microcontroler applications"),
    ProgrammingLanguage(name: "VISUAL BASIC", introducedYear: "1991", nameOfAuthor: "Microsoft", countryOrigin: "USA", imageName: "https://banner2.cleanpng.com/20180418/yuw/kisspng-team-foundation-server-microsoft-visual-studio-vis-net-5ad7705b73f752.251069281524068443475.jpg", application: "developing windows application and to interface database system"),
    ProgrammingLanguage(name: "HASKELL", introducedYear: "1990", nameOfAuthor: "Simon Peyton Jones", countryOrigin: "England", imageName: "https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/haskell-1024.png", application: "Designed for industrial application"),
    ProgrammingLanguage(name: "R", introducedYear: "1993", nameOfAuthor: "Robert Gentleman", countryOrigin: "Canada", imageName: "https://cdn4.iconfinder.com/data/icons/logos-and-brands/512/285_R_Project_logo-1024.png", application: "data analysis, data miners and statistical software")
]



