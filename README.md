# Food Offer App

[![Food Offer App Demo](https://img.shields.io/badge/Demo-Video-blue)](https://example.com/demo)  
**GitHub Repository:** [Food Offer App](https://github.com/SanaMehdi/my_flutter_app1/)

Food Offer App is a Flutter-based mobile application that showcases a variety of food categories, allowing users to browse, search, and manage their food orders conveniently.

---

## **Project Overview**
This application is designed to provide a delightful experience for food enthusiasts. Users can explore food categories such as burgers, pizzas, and kebabs, view detailed item descriptions, and add items to their cart. The app also includes user authentication features for a personalized experience.

---

## **Features**
- **Home Screen**: Browse a variety of food categories.
- **Category Pages**: Explore detailed pages for items like burgers, pizzas, and kebabs.
- **Favorites**: Save and view your favorite restaurants.
- **Add to Cart**: Manage your orders with a shopping cart feature.
- **User Authentication**: Sign-up and login for personalized user profiles.
- **Responsive Design**: Compatible with various screen sizes.
- **State Management**: Built using the Provider package.

---

## **Tools and Technologies Used**
- **Flutter**: Frontend framework for creating cross-platform applications.
- **Dart**: Programming language used with Flutter.
- **Provider**: State management for handling user interactions and data flow.
- **Material Design**: For modern and consistent UI components.

---

## **Code Structure**
The project follows the **MVC (Model-View-Controller)** design pattern:

- **Model**: Represents data and business logic (e.g., `CartItem` in `cart_controller.dart`).
- **View**: Handles the UI components (e.g., `home_page.dart`, `login_screen.dart`).
- **Controller**: Manages interactions between the model and the view (e.g., `cart_controller.dart`, `login_controller.dart`, `signup_controller.dart`).

### **Directory Structure**
```plaintext
lib/
├── controller/
│   ├── cart_controller.dart    # Manages cart functionality.
│   ├── login_controller.dart   # Handles login logic.
│   └── signup_controller.dart  # Handles sign-up logic.
├── pages/
│   ├── burger_page.dart         # Burger category screen.
│   ├── favorite_restaurants_page.dart # Favorite restaurants screen.
│   ├── kebab_page.dart          # Kebab category screen.
│   ├── pizza_page.dart          # Pizza category screen.
│   └── home_page.dart           # Main home screen.
├── view/
│   ├── cart_screen.dart         # Shopping cart screen.
│   ├── login_screen.dart        # Login screen.
│   └── sign_up_screen.dart      # Sign-up screen.
├── main.dart                    # Entry point of the app.



#MOCK UP

<img width="1086" alt="MockUp" src="https://github.com/user-attachments/assets/d591ba64-a1d7-4810-a964-e1e6c6002053" />

#This is my app mock up

 ![Sana_mockup](https://github.com/user-attachments/assets/d2819e9e-c6cb-4bf1-8917-4a39e27d78a5)

#this is my app video


https://github.com/user-attachments/assets/26615c5d-70de-4b9f-9cca-aaa772e1c0ce




