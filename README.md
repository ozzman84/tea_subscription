<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
![GitHub last commit](https://img.shields.io/github/last-commit/ozzman84/tea_subscription)


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img width="1434" alt="Screen Shot 2021-12-15 at 9 56 38 AM" src="#">

  <h2 align="center">Tea Subscription</h2>

  <p align="center">
  Take-Home Back End Prompt
  Tea Subscription Service
  You will create a Rails API for a Tea Subscription Service.

  https://mod4.turing.edu/projects/take_home/
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<h2><details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#deployment">Deployment</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details><h2/>


<!-- ABOUT THE PROJECT -->
## About The Project
  <p>
  Requirements:
  At a minimum, you must create:

  An endpoint to subscribe a customer to a tea subscription
  An endpoint to cancel a customer’s tea subscription
  An endpoint to see all of a customer’s subscriptions (active and cancelled)
  Beyond the base requirements, include any additional endpoints you’d like, but be mindful of your time. You don’t need to go overboard, consider what might be necessary to achieve MVP so that this API is easy to understand and consume by a Frontend Developer.

  Things we’ll be looking for:
  A strong understanding of Rails
  Ability to create restful routes
  Demonstration of well-organized code, following OOP
  Test Driven Development
  Clear documentation
  Try to limit your total time to approximately 8 hours on this project. Prioritize what is important to completing MVP and demonstrating your capabilities as a developer. If you are looking for a stretch option, you can consume this API for tea information: Tea API

  </p>

<p align="right">(<a href="#top">back to top</a>)</p>


### Built With
#### Framework
<p>
  <img src="https://img.shields.io/badge/Ruby%20On%20Rails-b81818.svg?&style=flat&logo=rubyonrails&logoColor=white" />
</p>

#### Languages
<p>
  <img src="https://img.shields.io/badge/Ruby-CC0000.svg?&style=flaste&logo=ruby&logoColor=white" />
    <img src="https://img.shields.io/badge/ActiveRecord-CC0000.svg?&style=flaste&logo=rubyonrails&logoColor=white" />
</p>

#### Tools
<p>
  <img src="https://img.shields.io/badge/Atom-66595C.svg?&style=flaste&logo=atom&logoColor=white" />
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
    <img src="https://img.shields.io/badge/PostgreSQL-4169E1.svg?&style=flaste&logo=postgresql&logoColor=white" />
</p>

#### Gems
<p>
  <img src="https://img.shields.io/badge/rspec-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/pry-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/simplecov-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />  
  <img src="https://img.shields.io/badge/rubocop-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />
  <img src="https://img.shields.io/badge/shoulda--matchers-b81818.svg?&style=flaste&logo=rubygems&logoColor=white" />

</p>

#### Development Principles
<p>
  <img src="https://img.shields.io/badge/OOP-b81818.svg?&style=flaste&logo=OOP&logoColor=white" />
  <img src="https://img.shields.io/badge/TDD-b87818.svg?&style=flaste&logo=TDD&logoColor=white" />
  <img src="https://img.shields.io/badge/MVC-b8b018.svg?&style=flaste&logo=MVC&logoColor=white" />
  <img src="https://img.shields.io/badge/REST-33b818.svg?&style=flaste&logo=REST&logoColor=white" />
</p>


<p align="right">(<a href="#top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started

### Installation

_Follow the instructions listed below to get the application up and running._

1. Clone the repo
   ```sh
   git clone git@github.com:ozzman84/tea_subscription.git
   ```
2. Run bundle
   ```sh
   bundle install
   ```
3. Run migrations
   ```sh
   rails db:{create,migrate}
   ```

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- QUERY/RESPONSE -->
## Query/Response


  POST `http://localhost:3000/api/v1/customer/subscriptions`

  <p><b>QUERIES</b></p>

<p><b>All Customers</b></p>

- All Customers Query

  ```rb
  {
    customer_id: 2
  }
  ```
- JSON Return Payload

  ```json
  {
    "data": {
      "id": 1,
      "type": "subscription",
      "attributes": {
        "title": "Eary Grey",
        "price": 5.99,
        "status": "active",
        "frequency": "weekly"
      },
      "relationships": {
        "id": "1",
        "type": "customer",
        "attributes": {
          "name": "Customer A"
        },
        "id": "1",
        "id": "tea",
        "attributes": {
          "name": "Earl Grey"
        }
      },
      "id": 2,
      "type": "subscription",
      "attributes": {
        "title": "Eary Grey",
        "price": 5.99,
        "status": "active",
        "frequency": "weekly"
      },
      "relationships": {
        "id": "1",
        "type": "customer",
        "attributes": {
          "name": "Customer A"
        },
        "id": "1",
        "id": "tea",
        "attributes": {
          "name": "Earl Grey"
        }
      }  
    }
  }
  ```

<p><b>CREATE</b></p>

  - Create Customer Mutation

  ```rb
  {
    customer_id: 2,
    tea_id: 1,
    title: 'Test Name of Tea',
    price: 5.99,
    status: 'active',
    frequency: 'weekly'
  }
  ```
  - JSON Return Payload

  ```json
  {
    "data": {
      "id": 2,
      "type": "subscription",
      "attributes": {
        "title": "Eary Grey",
        "price": 5.99,
        "status": "active",
        "frequency": "weekly"
      },
      "relationships": {
        "id": "1",
        "type": "customer",
        "attributes": {
          "name": "Customer A"
        },
        "id": "1",
        "id": "tea",
        "attributes": {
          "name": "Earl Grey"
        }
      }  
    }
  }

  ```

<p><b>UPDATE</b></p>

  - Update Location Query

  ```rb
  {
    subscription_id: 1,
    status: "cancelled"
  }
  ```

  - JSON Return Payload

  ```json
  {
    "data": {
      "id": 2,
      "type": "subscription",
      "attributes": {
        "title": "Eary Grey",
        "price": 5.99,
        "status": "active",
        "frequency": "weekly"
      },
      "relationships": {
        "id": "1",
        "type": "customer",
        "attributes": {
          "name": "Customer A"
        },
        "id": "1",
        "id": "tea",
        "attributes": {
          "name": "Earl Grey"
        }
      }  
    }
  }
  ```

</br>


See the [open issues](https://github.com/ozzman84/tea_subscription/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact
<center>

| Back-end Team  |<img src="https://img.shields.io/badge/LinkedIn-0077B5??style=flat&logo=appveyor&logo=linkedin&logoColor=white" />|<img src="https://img.shields.io/badge/GitHub-100000??style=flat&logo=appveyor&logo=github&logoColor=white" />|
| :-------------:| :-------------------------------------------------:|:------------------------------------:|
| Ozzie Osmonson | [link](https://www.linkedin.com/in/ozzie-osmonson/)|[link](https://github.com/ozzman84)   |


<center/>

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/ozzman84/tea_subscription.svg??style=flat&logo=appveyor
[contributors-url]: https://github.com/ozzman84/routes-be/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ozzman84/Best-README-Template.svg??style=flat&logo=appveyor
[forks-url]: https://github.com/ozzman84/routes-be/network/members
[stars-shield]: https://img.shields.io/github/stars/ozzman84/routes-be.svg??style=flat&logo=appveyor
[stars-url]: https://github.com/ozzman84/routes-be/stargazers
[issues-shield]: https://img.shields.io/github/issues/ozzman84/routes-be.svg??style=flat&logo=appveyor
[issues-url]: https://github.com/ozzman84/routes-be/issues
[license-shield]: https://img.shields.io/github/license/ozzman84/routes-be.svg??style=flat&logo=appveyor
[product-screenshot]: images/screenshot.png
