# 🌐 Настройка домена supbizai.ru на Reg.ru + Vercel

**Дата:** 12 марта 2026
**Домен:** https://supbizai.ru
**Хостинг:** Vercel

---

## 📋 ШАГ 1: Настройка DNS на Reg.ru

### 1.1 Зайди в панель управления

1. Открой https://www.reg.ru/
2. Войди в личный кабинет
3. Перейди в **Мои домены**
4. Кликни на домен **supbizai.ru**

### 1.2 Открой управление DNS

1. В меню домена выбери **DNS-серверы и управление зоной**
2. Нажми **Изменить** (или **Добавить запись**)

### 1.3 Добавь A-запись

| Параметр | Значение |
|----------|----------|
| **Тип записи** | `A` |
| **Subdomain** | `@` |
| **IP Address** | `216.198.79.1` |
| **TTL** | `3600` (или 1 час) |

Нажми **Добавить** или **Сохранить**

### 1.4 Добавь CNAME-запись для www

| Параметр | Значение |
|----------|----------|
| **Тип записи** | `CNAME` |
| **Subdomain** | `www` |
| **Canonical Name** | `b1870f76b0b9eaa5.vercel-dns-017.com.` |
| **TTL** | `3600` (или 1 час) |

Нажми **Добавить** или **Сохранить**

---

## 📋 ШАГ 2: Настройка домена в Vercel

### 2.1 Зайди в Vercel Dashboard

1. Открой https://vercel.com/dashboard
2. Найди свой проект **kvantai** (или переименуй в supbizai)

### 2.2 Добавь домен

1. Кликни на проект
2. Перейди во вкладку **Settings**
3. В меню слева выбери **Domains**
4. Нажми **Add**
5. Введи: `supbizai.ru`
6. Нажми **Add**

### 2.3 Добавь www-поддомен

1. Снова нажми **Add**
2. Введи: `www.supbizai.ru`
3. Нажми **Add**

### 2.4 Проверка DNS

Vercel автоматически проверит DNS записи:

- ✅ **Valid Configuration** — всё настроено правильно
- ⚠️ **A record not found** — DNS ещё не обновились (подожди)

---

## ⏱️ ВРЕМЯ ОБНОВЛЕНИЯ DNS

| Этап | Время |
|------|-------|
| Обновление DNS на Reg.ru | 5-30 минут |
| Глобальное распространение | до 24 часов |
| SSL сертификат от Vercel | 5-15 минут |

**Обычно всё работает через 1-2 часа!**

---

## 🔒 SSL СЕРТИФИКАТ

Vercel **автоматически** выдаст бесплатный HTTPS сертификат:

1. После проверки DNS
2. Через 5-15 минут
3. Никаких действий не требуется

Сайт будет доступен по:
- ✅ https://supbizai.ru
- ✅ https://www.supbizai.ru

---

## ✅ ПРОВЕРКА НАСТРОЕК

### 1. Проверь DNS записи

Открой https://dnschecker.org/

Введи:
- **Домен:** `supbizai.ru`
- **Тип записи:** `A`

Должно показать: `216.198.79.1`

### 2. Проверь доступность сайта

Открой в браузере:
- https://supbizai.ru
- https://www.supbizai.ru

### 3. Проверь в Vercel

Settings → Domains → должно быть:
```
✅ supbizai.ru
✅ www.supbizai.ru
```

---

## 🆘 TROUBLESHOOTING

### ❌ "A record not found" в Vercel

**Причина:** DNS ещё не обновились

**Решение:**
1. Подожди 1-2 часа
2. Проверь на https://dnschecker.org/
3. Если через 24 часа не работает — пиши в поддержку Reg.ru

### ❌ "Conflict: Domain already exists"

**Причина:** Домен уже добавлен в другой проект Vercel

**Решение:**
1. Зайди в Vercel Dashboard
2. Проверь другие проекты
3. Удали домен из старого проекта
4. Добавь в текущий

### ❌ Сайт не открывается

**Проверь:**

1. **DNS записи:**
   ```
   ping supbizai.ru
   ```
   Должен показать IP: `216.198.79.1`

2. **Vercel статус:**
   - Settings → Domains → нет ошибок

3. **Браузер:**
   - Очисти кэш (Ctrl+Shift+Delete)
   - Попробуй режим инкогнито

---

## 📞 ПОДДЕРЖКА

### Reg.ru:
- Телефон: 8-800-500-00-00 (бесплатно по РФ)
- Чат: https://www.reg.ru/support/
- Тикеты: https://www.reg.ru/support/ticket/

### Vercel:
- Документация: https://vercel.com/docs/concepts/projects/domains
- Support: https://vercel.com/support

---

## 📊 ЧЕКЛИСТ

- [ ] A-запись добавлена на Reg.ru (@ → 216.198.79.1)
- [ ] CNAME-запись добавлена на Reg.ru (www → b1870f76b0b9eaa5.vercel-dns-017.com.)
- [ ] Домен добавлен в Vercel (supbizai.ru)
- [ ] www-поддомен добавлен в Vercel (www.supbizai.ru)
- [ ] Vercel показывает "Valid Configuration"
- [ ] Сайт открывается по https://supbizai.ru
- [ ] HTTPS сертификат активен (замок в браузере)

---

## 🎯 ССЫЛКИ

| Сервис | Ссылка |
|--------|--------|
| **Reg.ru DNS** | https://www.reg.ru/domain/ns/ |
| **Vercel Domains** | https://vercel.com/dashboard |
| **DNS Checker** | https://dnschecker.org/ |
| **Vercel Docs** | https://vercel.com/docs/concepts/projects/domains |

---

**ГОТОВО!** 🎉

*После настройки DNS сайт будет доступен по https://supbizai.ru*
