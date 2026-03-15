const playwright = require('playwright-core');

(async () => {
  const browser = await playwright.chromium.launch({ headless: true });
  const page = await browser.newPage();
  
  // Перехват консоли
  page.on('console', msg => {
    console.log(`[${msg.type()}] ${msg.text()}`);
  });
  
  // Перехват ошибок
  page.on('pageerror', err => {
    console.error(`Page Error: ${err.message}`);
  });
  
  try {
    await page.goto('https://supbizai.ru', { waitUntil: 'networkidle', timeout: 30000 });
    await page.screenshot({ path: 'full-screenshot.png', fullPage: true });
    console.log('Screenshot saved to full-screenshot.png');
    
    // Проверка видимости элементов
    const isVisible = await page.isVisible('.nav-logo');
    console.log('Nav logo visible:', isVisible);
    
    const heroVisible = await page.isVisible('.hero');
    console.log('Hero section visible:', heroVisible);
  } catch (err) {
    console.error('Error:', err.message);
  }
  
  await browser.close();
})();
