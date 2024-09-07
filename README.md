# Info

This FiveM script allows you to recover or delete a vehicle using its license plate. It was initially created as a temporary fix for a bug in **okokGarage** and **AdvancedParking**. The issue arose when an admin used the "dv" command to delete a vehicle, causing it to neither be stored in the garage nor appear in the impound. As a result, it became impossible to park the vehicle in or out.


# Installation

## Dependencies

- [ox_lib](https://github.com/overextended/ox_lib)
- [oxmysql](https://github.com/overextended/oxmysql)
- RageUI (Note: Implemented because i removed some things. Original Script: [RageUIV2](https://github.com/Shazuub/RageUIV2/tree/main))

## Setup

1. **Download** the script files.
2. **Install** the required dependencies (`ox_lib`, `oxmysql`, and RageUI).
3. **Add** the script to your `resources` folder.
4. **Start** the script in your `server.cfg` file by adding the following line:
   ```plaintext
   start <your_script_name>
   ```
5. **Restart** your FiveM server.

## Usage


- Ensure you are an admin or belong to a group listed in `Config.AdminGroups`.
- Type `/vehicleutils` in the chat or F8 console.
- Select the desired action from the menu.
- Enter the license plate number, and the action will be completed automatically.


## Notes

- Make sure you have the necessary permissions to use the `vehicleutils` command.
- The script assumes that the `ox_lib` and `oxmysql` libraries are correctly installed and configured.
- 0.00ms - 0.01ms Resmon

## Troubleshooting

If you encounter issues:
- Verify that all dependencies are properly installed.
- Check the server and client logs for error messages.
- Ensure that the script is correctly referenced in your `server.cfg` file.

## Contribution

Feel free to contribute by submitting issues or pull requests. For any questions or suggestions, please open an issue on the [GitHub repository](https://github.com/your-repo-link).

## License

This script is licensed under the a Custom License [LICENSE](LICENSE).
