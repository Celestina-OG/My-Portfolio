
# My Portfolio

This is a personal portfolio website showcasing my projects, skills, and certifications. You can use this as a template for your own portfolio or customize it as needed.

## Getting Started

To get started with this portfolio, follow these steps:

### Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/Celestina-OG/My-Portfolio.git
```
### Navigate to the Directory
Change to the project directory:

```bash
cd My-Portfolio
```
### Build the Docker Image
Build the Docker image with the following command:

```bash
docker build -t portfolio .
```
### Run the Docker Container
Run the Docker container with:

```bash
docker run -p 80:80 portfolio
```
### Access the Portfolio
Open your web browser and navigate to http://localhost or use your IP address to access the portfolio.

### Customization
To customize the content of the portfolio:

Edit the Source Code: Modify the React components located in the src directory to update text, images, and links according to your preferences.
Update Assets: Replace images and other assets in the src/assets directory with your own.
Rebuild the Docker Image: After making changes, rebuild the Docker image with docker build -t portfolio . and rerun the container to see the updates.

### Contributing
Feel free to submit pull requests or open issues if you have suggestions or improvements.

### License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
