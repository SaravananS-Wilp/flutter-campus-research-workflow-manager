# Campus Research Workflow Manager

A modern Flutter-based CRUD application developed using Back4App (Backend-as-a-Service) for managing academic and research tasks efficiently.

This project is designed as a unique alternative to a normal Task Manager App by focusing on research workflow management inside a campus environment. It helps students organize literature reviews, faculty meetings, seminar preparation, project submissions, paper reviews, and research milestones in a structured and professional way.

---

## Project Overview

Campus Research Workflow Manager is a cloud-connected Flutter application that allows users to:

* Register and login securely using student email ID
* Create research-related tasks
* View all tasks in real time
* Update task details
* Delete completed or unnecessary tasks
* Set deadlines for submission and review
* Manage task priority and progress status
* Securely logout with session handling

The application uses Back4App as Backend-as-a-Service (BaaS), eliminating the need for building a custom backend server.

---

## Technology Stack

### Frontend

* Flutter
* Dart

### Backend

* Back4App (Parse Server)

### Database

* Back4App Cloud Database

### Authentication

* Back4App User Authentication

### Version Control

* GitHub

### Development Platform

* VS Code

---

## Key Features

### User Authentication

* Student email-based registration
* Secure login system
* Session management
* Logout functionality

### CRUD Operations

* Create new research tasks
* Read/View all tasks
* Update task information
* Delete tasks permanently

### Advanced Task Management

* Priority selection (High / Medium / Low)
* Status tracking (Pending / In Progress / Completed)
* Deadline selection using modern date picker
* Real-time synchronization with cloud database

### Modern UI/UX

* Professional dashboard design
* Clean and responsive interface
* Mobile-friendly layout
* Smooth navigation
* Premium academic workflow theme

---

## Application Flow

### Step 1: User Registration

Users register using their student email ID and password.


### Step 2: Secure Login

Authenticated users log in using Back4App authentication.

### Step 3: Dashboard Access

Users can view all their research tasks.

### Step 4: Task CRUD Operations

Users can:

* Add new tasks
* Edit existing tasks
* Delete tasks
* Update priority and status
* Select deadlines

### Step 5: Real-Time Database Sync

All updates are stored instantly in Back4App Cloud Database.


### Step 6: Secure Logout

User session ends safely.

---

## Screenshots

### Login Screen

![Login Screen](./screenshots/1.%20Login%20Screen.png)

---

### Register Screen

![Register Screen](screenshots/2.%20Register%20Screen.png)

---

### Dashboard

![Dashboard](screenshots/3.%20Dashboard%20View.png)

---

### Add Task Screen

![Add Task](screenshots/4.%20Add%20Task.png)

---

### Edit Task Screen

![Edit Task](screenshots/6.%20Update%20Task.png)

---
### Delete Task Screen

![Edit Task](screenshots/5.%20Delete%20Task.png)

---

### Back4App Cloud Database

![Back4App Database](screenshots/8.Back4App%20Database.png)

---

## Back4App Integration

This project uses Back4App for:

* User authentication
* Cloud database storage
* Real-time task synchronization
* Secure session handling

### Parse Class Used

ResearchTask

### Stored Fields

* title
* description
* priority
* deadline
* status

---

## How to Run This Project

### Step 1

Clone the repository

```bash
git clone https://github.com/SaravananS-Wilp/flutter-campus-research-workflow-manager.git
```

### Step 2

Move to project folder

```bash
cd flutter-campus-research-workflow-manager
```

### Step 3

Install dependencies

```bash
flutter pub get
```

### Step 4

Configure Back4App credentials inside:

lib/constants/app_constants.dart

Add:

* Application ID
* Client Key
* Server URL

### Step 5

Run the project

```bash
flutter run
```

---

## Learning Outcomes

Through this project, the following concepts were learned:

* Flutter application development
* Backend-as-a-Service (BaaS) integration
* Parse Server implementation
* Cloud database management
* User authentication systems
* CRUD operations using Flutter
* GitHub project management
* UI/UX design for cross-applications

---

## Future Enhancements

Possible future improvements include:

* Push notifications for deadlines
* Faculty approval workflow
* PDF report export
* File upload for research documents
* Research progress analytics dashboard
* Multi-user collaboration support

---

## Author

Developed by:

Saravanan S

BITS Pilani – Work Integrated Learning Programme (WILP)

Course: Cross Platform Application Development

Assignment: Flutter CRUD App with Back4App (BaaS)

---
