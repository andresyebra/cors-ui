<img width="120" alt="cors-logo" src="https://github.com/user-attachments/assets/eabe80ed-b30a-4dee-bb73-dd74eb486d4a" />


## Overview
**Cors::Ui** is a Rails Engine that provides a web interface for inspecting and testing CORS (`Cross-Origin Resource Sharing`) configurations in your Rails application.

Cross-Origin Resource Sharing (`CORS`) is a security feature that restricts cross-origin HTTP requests. In Rails, you can configure CORS using the `rack-cors` gem to define allowed origins, methods, and headers.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "cors-ui"
```

Then execute:

```bash
bundle install
```

Or install it manually:

```bash
gem install cors-ui
```

## Integration
After installation, mount the engine in your `config/routes.rb` file:

```ruby
mount Cors::Ui::Engine, at: "/cors"
```

This will make the CORS UI accessible at `/cors` in your application.

## Usage
Once the engine is mounted, you can access the UI to configure CORS settings visually. The interface allows you to:

- Visualize CORS configurations across your application
- Inspect CORS settings for different routes
- View default CORS headers and configurations
- Easy integration with Rails applications


### Home View:
<img width="1387" alt="home" src="https://github.com/user-attachments/assets/4ba0f928-62bd-4f45-b339-282cde61a4b8" />

### Dashboard View:
<img width="1392" alt="dashboard" src="https://github.com/user-attachments/assets/253569e6-d1cb-40e0-8088-c5e120542a83" />


## Contributing
We welcome contributions! If you'd like to improve the project:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m "Your message"`).
4. Push to your branch (`git push origin feature-branch`).
5. Open a Pull Request.

## License
This gem is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

