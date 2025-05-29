User Data Fetcher
A Flutter application that demonstrates fetching user data from a REST API using the Retrofit package.
Features

Fetches user data from a remote API.
Displays user information in a clean UI.
Implements Retrofit for efficient API calls.

Tech Stack

Flutter: Framework for building the cross-platform app.
Retrofit: For type-safe HTTP API calls.
Dio: HTTP client used by Retrofit for networking.

Setup

Clone the repository:
git clone <repository-url>


Navigate to the project directory:
cd user_data_fetcher


Install dependencies:
flutter pub get


Run the app:
flutter run



API
This project uses a public API (e.g., JSONPlaceholder) to fetch user data. Update the API endpoint in the Retrofit client configuration if using a custom API.
Structure

lib/api/: Contains Retrofit client and API service definitions.
lib/models/: Data models for user data.
lib/screens/: UI components for displaying fetched data.

Dependencies

retrofit: ^4.0.1
dio: ^5.0.0
json_annotation: ^4.8.0

Run flutter pub add to include these in your pubspec.yaml.
Notes

Ensure an active internet connection for API calls.
Add error handling for failed API requests in production.

