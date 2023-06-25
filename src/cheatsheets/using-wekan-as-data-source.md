# Using Sandstorm+Wekan to populate a PDF, Simple Report or website.


This guide will walk you through the process of exporting information from Wekan and connecting it to a PDF or a simple report. No prior knowledge of computers or APIs is required. Let's get started!

## Prerequisites

Before we begin, please ensure you have the following:

- Wekan Sandstorm Grain URL: The web address where your Wekan instance is hosted.
- Wekan Webkey: An authentication key to access the Wekan API.

## Step 1: Obtaining Wekan Sandstorm Grain URL

1. Open your web browser and navigate to your Wekan Sandstorm instance. This might be provided to you by your system administrator or hosting service.
2. Note down the URL from the address bar. It should look something like `https://your-wekan-instance.com` or `http://localhost:port` if it's hosted locally.

## Step 2: Obtaining Wekan Webkey

1. Log in to your Wekan account.
2. Go to your profile settings or account settings.
3. Look for the API settings or Webkey section.
4. Create a new Webkey if you don't already have one.
5. Copy the Webkey and keep it safe. Treat it as a secret, as it provides access to your Wekan data.

## Step 3: Exporting Wekan Information

To export Wekan information using the provided method, follow these steps:

1. Open a text editor or terminal on your computer.
2. Replace the placeholders in the following command with your actual values:

```bash
curl -X GET -H "Authorization: Bearer YOUR_WEBKEY" https://YOUR_WEKAN_GRAIN_URL/api/boards/sandstorm/export
```

- Replace `YOUR_WEBKEY` with the Webkey you obtained in Step 2.
- Replace `YOUR_WEKAN_GRAIN_URL` with the Wekan Sandstorm Grain URL you obtained in Step 1.

3. Copy the modified command and paste it into your text editor or terminal.
4. Execute the command to initiate the export process.

## Step 4: Working with the Exported Data

Once the export is completed, you will have the Wekan information available in a format suitable for further processing. To generate a PDF or a simple report, you can use various tools or methods. Here's a basic approach:

1. Open a word processing application such as Microsoft Word, Google Docs, or any other text editor that supports document creation.
2. Copy and paste the exported data into the document.
3. Edit and format the document as desired, adding headings, text, or any other necessary elements.
4. Save the document.
5. If you want to convert the document to PDF, most word processors offer the option to export or save as PDF. Choose that option and save the file as a PDF.
6. If you want a simple report in a printable format, you can directly print the document from the word processor.

And there you have it! You have successfully exported Wekan information and connected it to a PDF or a simple report.

If you have any further questions or encounter any issues along the way, feel free to seek assistance from your system administrator, hosting service, or consult the Wekan documentation.

Happy exporting!
