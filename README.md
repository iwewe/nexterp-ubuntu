# NextERP Installation Script for Ubuntu Server

This bash script automates the installation of NextERP on Ubuntu using Docker. It simplifies the process by installing Docker, cloning the NextERP repository, creating a Docker Compose file, and starting the NextERP service.

## Usage

1. Download the script:

    ```bash
    wget https://raw.githubusercontent.com/your-username/your-repository/main/install_nexterp.sh
    ```

2. Make the script executable:

    ```bash
    chmod +x install_nexterp.sh
    ```

3. Run the script:

    ```bash
    ./install_nexterp.sh
    ```

4. Follow the on-screen instructions to complete the installation.

## Prerequisites

- Ubuntu 20.04 LTS (or later)
- Internet connection for downloading Docker and NextERP

## Notes

- The script installs Docker and Docker Compose. Ensure that your user has the necessary permissions to run Docker commands (consider adding your user to the `docker` group).

- After the installation, open your web browser and navigate to [http://localhost:8069](http://localhost:8069) to access NextERP.

- Default login credentials:
  - Database: nexterp
  - Login: admin
  - Password: admin

  Note: Change the default admin password after the initial login.

## Support and Contribution

For more information and support, visit the [NextERP GitHub repository](https://github.com/nexterp/nexterp). Contributions are welcome!

## License

This script is provided under the [MIT License](LICENSE).
