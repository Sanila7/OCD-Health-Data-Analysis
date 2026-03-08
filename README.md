# CSE 135 Project Overview

## Deployment URLs

- `https://test.sanisilva.site/`
- `https://sanisilva.site/`
- `https://collector.sanisilva.site/`
- `https://reporting.sanisilva.site/login.php`

---

## Test Credentials

### General Site Login
Use either of the following username/password pairs:

- **Username:** `grader`  
  **Password:** `Grader123`

- **Username:** `Sanila`  
  **Password:** `CSE135`

### MVC Login for Reporting Site
For the MVC login at `reporting.sanisilva.site/login.php`:

- **Username:** `admin`  
  **Password:** `pulsar123`

---

## Features

### 1. Authentication and Navigation

The reporting site implements **session-based authentication in PHP**.

- Visiting the reporting site redirects unauthenticated users to the login page.
- After entering valid credentials, a PHP session is created.
- The user is then redirected to the protected dashboard.
- Any attempt to access `dashboard.php` directly without logging in will redirect the user back to the login page.
- This prevents forceful browsing of protected pages.
- A **Logout** button is available on the dashboard, which destroys the session and returns the user to the login page.

---

### 2. Data Table / Grid Connection

The dashboard displays a **live data table** populated directly from the `collector_db` MySQL database.

The table shows the **50 most recent events** collected by `collector.js` from `test.sanisilva.site`, including:

- Event ID
- Session ID
- Event Type
- Event Name
- Page URL
- Timestamp

Data is fetched **server-side through PHP** and rendered as **raw HTML** on the dashboard.

---

### 3. Charts

The dashboard includes **two Chart.js visualizations** built from the live collected data:

#### Doughnut Chart
Shows the breakdown of events by type:

- `static`
- `performance`
- `activity`

#### Bar Chart
Shows the most frequent activity events, such as:

- `mousemove`
- `click`
- `keydown`
- `scroll`

Both charts pull **live data from the database on every page load**.

---
