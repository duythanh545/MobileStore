## Mobile Store

#Project Description
This project is a B2C (Business to Consumer) e-commerce application developed using Flutter. It allows users to browse through a variety of products, add them to their cart, and make purchases. The application provides a user-friendly interface for an enhanced shopping experience.

# Feature
_ Cart<br/>
_ FilterByCartegory<br/>
_ Checkout<br/>
_ Show product and product detail<br/>
_ Register and Login<br/>
_ Show user profile<br/>
_ Promotion<br/>
_ Search<br/>
_ Verified account via email<br/>
_ Forgot password via email<br/>
_ Show order and order detail<br/>
_ Change language<br/>

# Technological use
_ Dio and Retrofit for call API.<br/>
_ RxDart for stream management.<br/>
_ Bloc for state management.<br/>
_ Hive for save list of item of cart before checkout in local. <br/>
_ Localization for language change.<br/>

# Project Structure
_ assets: Contains static files such as images and icons.<br/>
_ lib: Contains the main application code.<br/>
    _ l10n: Contain Endlish and Vietnamese language script.<br/>
    _ languages: Set up language.<br/>
    _ src:<br/>
        _ api: Contain all api of this app.<br/>
        _ constant: Contain all color, validate and global variable.<br/>
        _ core: Defines data models for all api of this app.<br/>
        _ feature: Contain all of feature of this app.<br/>

# Setup
 1. Add sql file ..\back_end\Database\MobileStoreDatabase.sql to MySQL.
 2. Run file ..\back_end\MobileStore-9.11.1.jar using following command java -jar MobileStore-9.11.1.jar .
 3. Change your local ip address in this file ..\lib\src\api\api_service.dart and ..\lib\src\api\api_service.g.dart .
 4. Run this app.

# Thanks for using my app
