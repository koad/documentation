# Using Sandstorm+Wekan to populate a PDF, Simple Report or website.

Using Wekan to manage website content offers significant benefits for human users who want to change content without requiring coding knowledge. Wekan provides a user-friendly interface that allows non-technical users to easily update and modify website content. With Wekan's intuitive board and card system, users can organize and categorize different content elements, such as text, images, or multimedia, making it simple to locate and update specific sections. By eliminating the need for coding expertise, Wekan empowers content managers to efficiently make changes, add new information, or remove outdated content directly through the platform. This not only saves time and reduces reliance on developers but also promotes greater autonomy and agility in managing website content. With Wekan, human users can maintain a dynamic and up-to-date website without the barriers of coding knowledge.


## export as JSON

This guide will walk you through the process of exporting information from Wekan and connecting it to a PDF or a simple report. No prior knowledge of computers or APIs is required. Let's get started!

### Prerequisites

Before we begin, please ensure you have the following:

- Wekan Sandstorm Grain URL: The web address where your Wekan instance is hosted.
- Wekan Webkey: An authentication key to access the Wekan API.

### Step 1: Obtaining Wekan Sandstorm Grain URL

1. Open your web browser and navigate to your Wekan Sandstorm instance. This might be provided to you by your system administrator or hosting service.
2. Note down the URL from the address bar. It should look something like `https://your-wekan-instance.com` or `http://localhost:port` if it's hosted locally.

### Step 2: Obtaining Wekan Webkey

1. Log in to your Wekan account.
2. Go to your profile settings or account settings.
3. Look for the API settings or Webkey section.
4. Create a new Webkey if you don't already have one.
5. Copy the Webkey and keep it safe. Treat it as a secret, as it provides access to your Wekan data.

### Step 3: Exporting Wekan Information

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

### Step 4: Working with the Exported Data

Once the export is completed, you will have the Wekan information available in a format suitable for further processing. To generate a PDF or a simple report, you can use various tools or methods. Here's a basic approach:

1. Open a word processing application such as Microsoft Word, Google Docs, or any other text editor that supports document creation.
2. Copy and paste the exported data into the document.
3. Edit and format the document as desired, adding headings, text, or any other necessary elements.
4. Save the document.
5. If you want to convert the document to PDF, most word processors offer the option to export or save as PDF. Choose that option and save the file as a PDF.
6. If you want a simple report in a printable format, you can directly print the document from the word processor.

And there you have it! You have successfully exported Wekan information and connected it to a PDF or a simple report.


## Using nodejs

Here's an example of Node.js code that utilizes the `axios` library to export Wekan information using the provided API key:

```javascript
const axios = require('axios');
const fs = require('fs');

// Replace with your actual values
const webkey = 'YOUR_WEBKEY';
const wekanGrainURL = 'YOUR_WEKAN_GRAIN_URL';
const outputFile = 'wekan-export.json'; // Specify the desired output file name

async function exportWekanData() {
  try {
    const exportEndpoint = `https://${wekanGrainURL}/api/boards/sandstorm/export`;
    const headers = {
      Authorization: `Bearer ${webkey}`,
    };

    const response = await axios.get(exportEndpoint, { headers, responseType: 'stream' });

    const outputStream = fs.createWriteStream(outputFile);

    response.data.pipe(outputStream);

    return new Promise((resolve, reject) => {
      outputStream.on('finish', () => resolve(outputFile));
      outputStream.on('error', reject);
    });
  } catch (error) {
    console.error('An error occurred during export:', error);
    throw error;
  }
}

// Usage
exportWekanData()
  .then((outputFile) => {
    console.log(`Wekan data exported to: ${outputFile}`);
    // Further processing or generating PDF/report can be done here
  })
  .catch((error) => {
    console.error('Export failed:', error);
  });
```

Make sure to replace `'YOUR_WEBKEY'` and `'YOUR_WEKAN_GRAIN_URL'` with your actual Wekan Webkey and Grain URL, respectively. Additionally, you can specify the desired output file name by modifying the `outputFile` variable.

This code uses the `axios` library to make an HTTP GET request to the Wekan export endpoint, including the API key in the request headers. The response is streamed to a file using `fs.createWriteStream`, which allows you to save the export data as a JSON file.

After the export is completed, you can perform further processing or generate a PDF/report using the exported data as needed.

Remember to install the `axios` library by running `npm install axios` before running the code.

Feel free to adjust and build upon this example based on your specific requirements and preferred methods for generating PDFs or reports.



## some random page

To populate content within a static website using the Wekan export file (JSON), you can follow these general steps:

1. Obtain the Wekan export file: Export the desired boards or content from Wekan using the API or export functionality. This will generate a JSON file containing the exported data.

2. Analyze the structure of the JSON file: Open the Wekan export file in a text editor or JSON viewer to understand its structure and how the content is organized. Identify the relevant data fields that correspond to the content you want to populate on your static website.

3. Set up your static website: Create the necessary HTML, CSS, and JavaScript files for your static website. Decide on the layout and structure of your web pages.

4. Load the JSON file into your website: Add a script tag to your HTML file to load the JSON file into your website. 


For example, you can create a html file, such as `index.html`, and include the following code:

```
<!DOCTYPE html>
<html><head>
  <title>Static Website with Wekan Export</title>
  <style>
    html, body {
      margin-bottom: 20px;
      background-color: #23282F;
      color: #FFFFFF;
    }
  </style>
</head>
<body>
  <h1>Static Website with Wekan Export</h1>
  <div id="contentContainer"></div>

  <script>
    function getJsonObject(callback) {
      var xhr = new XMLHttpRequest();
      xhr.overrideMimeType('application/json');
      xhr.open('GET', 'https://cdn.koad.sh/examples/wekan-export.json', true);
      xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status == '200') callback(xhr.responseText);
      };
      xhr.send(null);
    };

    function processData(data) {
      contentData = JSON.parse(data);
      cards = contentData.cards

      var contentContainer = document.getElementById('contentContainer');
      cards.forEach(function (item) {
        var contentItem = document.createElement('div');
        contentItem.className = 'content-item';

        var title = document.createElement('h2');
        title.textContent = item.title;

        var description = document.createElement('p');
        description.textContent = item.description;

        contentItem.appendChild(title);
        contentItem.appendChild(description);

        contentContainer.appendChild(contentItem);
      });
    };

    getJsonObject(processData);
  	console.log({koad:{was:"here"}});

  </script>
</body>
</html>
```

   Replace `'https://cdn.koad.sh/examples/wekan-export.json'` with the correct file path to your Wekan export JSON file.

5. Populate content dynamically: Within the `processData()` function, you can access the `contentData` object, which holds the parsed data from the Wekan export file. Use this data to dynamically populate content on your web pages by targeting specific HTML elements and updating their content with the desired values from the JSON file.

   For example, you can use JavaScript to select HTML elements by their IDs or classes and set their `textContent`, `innerHTML`, or other relevant properties to the corresponding values from the `contentData` object.

6. Customize and style the content: Apply CSS styles to the dynamically populated content to ensure it matches the design and layout of your static website. Use CSS selectors to target specific elements and modify their appearance as needed.

By following these steps, you can utilize the Wekan export file (JSON) to populate content within your static website. Simply update the Wekan export file whenever you need to make changes or add new content, and the dynamic population process will ensure that your static website reflects the updated content without the need for manual coding.


## Happy exporting!
