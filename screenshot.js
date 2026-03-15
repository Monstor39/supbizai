const pw = require('playwright');

(async () => {
  const browser = await pw.chromium.launch();
  const page = await browser.newPage();
  await page.goto('http://localhost:8080');
  await page.screenshot({ path: 'screenshot.png', fullPage: true });
  await browser.close();
  console.log('Screenshot saved to screenshot.png');
})();
