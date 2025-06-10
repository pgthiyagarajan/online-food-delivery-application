<h1 align="center">🍽️ Online Food Delivery Application</h1>

<p align="center">An end-to-end web application designed to provide users with a seamless online food ordering experience — from discovering restaurants to placing orders, all through an intuitive and visually engaging interface.</p>

---

## 🚀 Features

The project is structured into **7 interconnected modules**, each providing a crucial part of the user journey:

### 1. Home Page Module
- Displays a list of restaurants in visually appealing cards.
- Each card includes the restaurant’s image, name, address, cuisine type, estimated delivery time, and ratings.
- A responsive navbar sits at the top with a logo, functional search bar, and sign-in/cart buttons.

![Home Page Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/home.png)

### 2. Menu Module
- Lists food items belonging to a selected restaurant.
- Each food card includes an image, name, description, price per quantity, rating, and an "Add Item" button.
- Maintains consistent layout and navigation from the homepage.

![Menu Page Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/menu.png)

### 3. Sign-In Module
- Welcomes users with a centered login card.
- Validates credentials with a 3-attempt limit.
- After 3 failed attempts, users are asked to contact the admin.
- Includes a link to register if the user does not have an account.

![Sign-In Page Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/login.png)

### 4. User Registration Module
- Provides a form for new users to sign up by entering:
  - Full name
  - Username
  - Password
  - Phone number
  - Address
  - Role (selected from a dropdown)
- On submission, user details are stored in the MySQL database.

![User Registration Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/user-registration.png)

### 5. Cart Module
- Accessible only to logged-in users.
- If cart is empty, prompts users to add items.
- Displays all items added from a single restaurant.
- If items from a new restaurant are added, the cart resets with the new selection.
- Features quantity adjustment (+/-), item-wise total, and grand total.
- Includes a "Proceed to Checkout" button.

![Cart Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/cart.png)

### 6. Checkout Module
- Displays the user's address.
- Lets the user select a payment method from a dropdown.
- Clicking "Place Order" confirms the purchase and proceeds to the final screen.

![Checkout Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/checkout.png)

### 7. Order Confirmation Module
- Thanks the user for placing the order.
- Includes an animated delivery agent on a scooter moving infinitely across the screen.

![Order Confirmation Screenshot](FOOD%20APP%20PROJECT/project-execution-images&video/order-confirmation.png)

---

## 👥 Target Users

This application is built for the **general public** — anyone looking to browse local restaurants, explore menus, and place food orders online with ease.

---

## 🛠 Tech Stack

| Layer        | Technology                                                                                                                                     | Description                                |
|--------------|------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------|
| 💻 Frontend  | ![Static Badge](https://img.shields.io/badge/HTML-%23E34F26?style=for-the-badge&logo=html5&logoColor=%23E34F26&logoSize=auto&labelColor=black&color=%23E34F26) &nbsp; ![Static Badge](https://img.shields.io/badge/CSS-%23663399?style=for-the-badge&logo=CSS&logoColor=%23663399&logoSize=auto&labelColor=black&color=%23663399) | Structure and styling of UI                |
| 🧠 Backend   | ![Static Badge](https://img.shields.io/badge/JAVA-%235382a1?style=for-the-badge&labelColor=black&color=%235382a1) &nbsp; ![JSP Badge](https://img.shields.io/badge/JSP-%23007396?style=for-the-badge&logo=java&logoColor=white)       | Server-side logic and dynamic content      |
| 🗄️ Database | ![Static Badge](https://img.shields.io/badge/MySQL-%234479A1?style=for-the-badge&logo=mysql&logoColor=%234479A1&logoSize=AUTO&labelColor=black&color=%234479A1)                                        | Data storage and management                |

---

## ⚙️ How to Run the Project

**Prerequisites:**
- Eclipse IDE
- Apache Tomcat Server
- MySQL Server

**Setup Steps:**
1. Clone or download the project files from this repository.
2. Import the project into Eclipse as a Dynamic Web Project.
3. Configure and start the Apache Tomcat server.
4. Set up the MySQL database using the included schema and data scripts.
5. Run the application on the server.
6. Access it via your local browser (e.g., `http://localhost:8080/YourProjectName`).

> 📽 A demo video showcasing the complete workflow will be embedded here soon.

---

## 🧪 Known Issues / Future Improvements

- Currently stable with no known issues.
- Future improvements may include support for order history, user profiles, and multi-vendor cart functionality.

---

## 🙌 Credits

Developed entirely by **Thiyagarajan** — Full Stack Java Developer.

---

Feel free to fork this project, give it a ⭐, and share your feedback!
