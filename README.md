# Tailwind web components starter kit

This is a starter kit to develop web components using Tailwind CSS.

Tailwind and web components do not play well together.

We managed to find a way to make them work without hacks or weird tech: just common technologies combined in a elegant way.

No dependencies, based on [lit-element](https://lit.dev/docs/).

## How will you create a tailwind component?

Here is a sample code:

```typescript
import { html } from "lit";
import { customElement, property } from "lit/decorators.js";
import { TailwindElement } from "../shared/tailwind.element";

import style from "./test.component.scss?inline"; // #1

@customElement("test-component")
export class TestComponent extends TailwindElement(style) {
  // #2

  @property()
  name?: string = "World";

  render() {
    return html`
      <p>
        Hello,
        <b>${this.name}</b>
        !
      </p>
      <button class="bg-blue-200 text-yellow-200 p-2 rounded-full text-2xl">
        Hello world!
      </button>
    `;
  }
}
```

It is based on the [lit element](https://lit.dev/docs/) technology: if you wrote a lit component before, you'll find it familiar.

There are only two differences to a standard _LitElement_:

1. You must import your styles from a separate file. And this is good for two reasons:
   - it separates the CSS from the logic
   - you can decide to use CSS or SCSS
   - note the `?inline` at the end of the file path: if you don't add it, then vite will add the style to the head of the html. If you add it, the style is scoped into the component only
2. the class extends a _TailwindElement_ rather than a LitElement

A _TailwindElement_ extends a _LitElement_ (see below) and adds the logic to integrate tailwind and your styles.

## Get started

To run the project:

1. `pnpm install` (only the first time)
2. `pnpm start` to run the server
3. to develop the library, run `pnpm build` and copy the static assets where you need them.

You may clone this repo and start developing your components by looking at the _test.component_ as reference.

As an alternative, and if you like to have control over every piece, do the following:

1. copy the files in the shared folder:
   - _tailwind.element.ts_ extends LitElement by adding the tailwind support
   - _tailwind.global.css_ includes tha Tailwind base classes into each component
   - _globals.d.ts_ is used to avoid TypeScript errors when importing CSS/Scss files in typescript files (thanks [@emaant96](https://github.com/emaant96))
2. copy the _package.json_ or the devDependencies inside into your own _package.json_ (**there are no dependencies**)
3. copy _postcss.config.js_, _tailwind.config.js_ and _tsconfig.js_

That's all.

## Show me the pieces

If you want to understand how it works, it's simple:

- the **package.json** integrates these technologies:

```json
"autoprefixer": "^10.4.12",
"postcss": "^8.4.18",
"lit": "^2.4.0",
"tailwindcss": "^3.2.0",
"typescript": "^4.8.4",
"vite": "^3.1.8",
"sass": "^1.55.0"
```

- **vite** does almost all the work automatically
- to integrate tailwind, the most important file is in _src/shared/tailwind.element.ts_

```typescript
import { LitElement, unsafeCSS } from "lit";

import style from "./tailwind.global.css";

const tailwindElement = unsafeCSS(style);

export const TailwindElement = (style) =>
  class extends LitElement {
    static styles = [tailwindElement, unsafeCSS(style)];
  };
```

It extends a _LitElement_ class at runtime and adds the component tailwind classes.

The _style_ variable comes from your component, where it is imported from an external CSS (or SCSS) file.

Then it is combined with the default tailwind classes.

If you add more components, the common parts are reused.

## Who uses it?

We developed this starter kit to implement a web session player for our open source SaaS [browserbot](https://browserbot.io/).

If you want to contribute or share some thoughts, just get in touch with us.

Enjoy.


# ymlwebcl-social-media-sharing

## Install

```bash
yarn add ymlwebcl-social-media-sharing
```

```bash
npm i ymlwebcl-social-media-sharing
```

## Usage

## With Vue

### With default value

```js
<template>
  <ymlwebcl-social-media-sharing
    :showOptions="showOptions"
    handleShareButton="handleshare"
    @handleshare="handleShareButton"
    :shareUrl="shareUrl"
  />
</template>
<script>
export default {
  name: "App",
  data() {
    return {
      showOptions: false,
      shareUrl:"https://yml.co/",
    };
  },
  methods: {
    handleShareButton() {
      console.log("Custom event has been triggered");
      this.showOptions = !this.showOptions;
    },
  },
};
</script>
<style>
#app {
}
</style>
```

### With Prop

```js
<template>
  <template>
  <ymlwebcl-social-media-sharing
    :socialMediaDetails="socialMediaDetails"
    :showCopyButton="showCopyButton"
    :copyText="copyText"
    :showOptions="showOptions"
    handleShareButton="handleshare"
    @handleshare="handleShareButton"
    handleCopyButton="handlecopy"
    @handlecopy="handleCopyButton"
    :shareUrl="shareUrl"
  />
</template>
<script>
export default {
  name: "App",
  data() {
    return {
      socialMediaDetails: [
        {
          id: "1",
          platform: "linkedIn",
          text: "linkedIn",
        },
        {
          id: "2",
          platform: "twitter",
          text: "twitter",
        },
      ],
      showOptions: false,
      shareUrl: "https://yml.co/",
      showCopyButton: true,
      copyText: "copy link",
    };
  },
  methods: {
    handleShareButton() {
      console.log("Custom event has been triggered");
      this.showOptions = !this.showOptions;
    },
    handleCopyButton() {
      console.log("custom event has been triggered");
      this.copyText = "copied";
    },
  },
};
</script>
<style>
#app {
}
</style>
```

### With Slot

```js
<template>
  <ymlwebcl-social-media-sharing
    :socialMediaDetails="socialMediaDetails"
    :showCopyButton="showCopyButton"
    :copyText="copyText"
    :showOptions="showOptions"
    handleShareButton="handleshare"
    @handleshare="handleShareButton"
    handleCopyButton="handlecopy"
    @handlecopy="handleCopyButton"
    :shareUrl="shareUrl"
    shareButtonSlotName="share"
    copyButtonSlotName="copySlot"
  >
    <div slot="share">
      <svg width="25px" height="25px" viewBox="0 0 24 24" fill="none">
        <path
          d="M9 6L12 3M12 3L15 6M12 3V13M7.00023 10C6.06835 10 5.60241 10 5.23486 10.1522C4.74481 10.3552 4.35523 10.7448 4.15224 11.2349C4 11.6024 4 12.0681 4 13V17.8C4 18.9201 4 19.4798 4.21799 19.9076C4.40973 20.2839 4.71547 20.5905 5.0918 20.7822C5.5192 21 6.07899 21 7.19691 21H16.8036C17.9215 21 18.4805 21 18.9079 20.7822C19.2842 20.5905 19.5905 20.2839 19.7822 19.9076C20 19.4802 20 18.921 20 17.8031V13C20 12.0681 19.9999 11.6024 19.8477 11.2349C19.6447 10.7448 19.2554 10.3552 18.7654 10.1522C18.3978 10 17.9319 10 17 10"
          stroke="#000000"
          stroke-width="2"
        />
      </svg>
    </div>
    <div slot="linkedInSlot">
      <svg width="30px" height="30px" viewBox="0 0 16 16">
        <path
          fill="#0A66C2"
          d="M12.225 12.225h-1.778V9.44c0-.664-.012-1.519-.925-1.519-.926 0-1.068.724-1.068 1.47v2.834H6.676V6.498h1.707v.783h.024c.348-.594.996-.95 1.684-.925 1.802 0 2.135 1.185 2.135 2.728l-.001 3.14zM4.67 5.715a1.037 1.037 0 01-1.032-1.031c0-.566.466-1.032 1.032-1.032.566 0 1.031.466 1.032 1.032 0 .566-.466 1.032-1.032 1.032zm.889 6.51h-1.78V6.498h1.78v5.727zM13.11 2H2.885A.88.88 0 002 2.866v10.268a.88.88 0 00.885.866h10.226a.882.882 0 00.889-.866V2.865a.88.88 0 00-.889-.864z"
        />
      </svg>
    </div>

    <div slot="twitterSlot">
      <svg width="30px" height="30px" viewBox="0 0 32 32">
        <path
          d="M11.7887 28C8.55374 28 5.53817 27.0591 3 25.4356C5.15499 25.5751 8.95807 25.2411 11.3236 22.9848C7.76508 22.8215 6.16026 20.0923 5.95094 18.926C6.25329 19.0426 7.6953 19.1826 8.50934 18.856C4.4159 17.8296 3.78793 14.2373 3.92748 13.141C4.695 13.6775 5.99745 13.8641 6.50913 13.8174C2.69479 11.0882 4.06703 6.98276 4.74151 6.09635C7.47882 9.88867 11.5812 12.0186 16.6564 12.137C16.5607 11.7174 16.5102 11.2804 16.5102 10.8316C16.5102 7.61092 19.1134 5 22.3247 5C24.0025 5 25.5144 5.71275 26.5757 6.85284C27.6969 6.59011 29.3843 5.97507 30.2092 5.4432C29.7934 6.93611 28.4989 8.18149 27.7159 8.64308C27.7224 8.65878 27.7095 8.62731 27.7159 8.64308C28.4037 8.53904 30.2648 8.18137 31 7.68256C30.6364 8.52125 29.264 9.91573 28.1377 10.6964C28.3473 19.9381 21.2765 28 11.7887 28Z"
          fill="#47ACDF"
        />
      </svg>
    </div>
    <div slot="facebookSlot">
      <svg width="30px" height="30px" viewBox="0 0 48 48">
        <circle cx="24" cy="24" r="20" fill="#3B5998" />
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="M29.315 16.9578C28.6917 16.8331 27.8498 16.74 27.3204 16.74C25.8867 16.74 25.7936 17.3633 25.7936 18.3607V20.1361H29.3774L29.065 23.8137H25.7936V35H21.3063V23.8137H19V20.1361H21.3063V17.8613C21.3063 14.7453 22.7708 13 26.4477 13C27.7252 13 28.6602 13.187 29.8753 13.4363L29.315 16.9578Z"
          fill="white"
        />
      </svg>
    </div>
    <div slot="pinterestSlot">
      <svg width="30px" height="30px" viewBox="0 0 48 48">
        <circle cx="24" cy="24" r="20" fill="#BD081C" />
        <path
          fill-rule="evenodd"
          clip-rule="evenodd"
          d="M24.8523 12C18.3024 12 15 16.6959 15 20.6118C15 22.9826 15.8978 25.0924 17.8231 25.8777C18.1389 26.0067 18.4216 25.8822 18.5131 25.5327C18.5769 25.2905 18.7276 24.6799 18.7944 24.4257C18.8866 24.0799 18.8506 23.9592 18.5956 23.6577C18.0406 23.0029 17.6858 22.1553 17.6858 20.9546C17.6858 17.4699 20.2929 14.3513 24.4736 14.3513C28.1757 14.3513 30.2098 16.6141 30.2098 19.6345C30.2098 23.6096 28.4502 26.9645 25.8394 26.9645C24.3971 26.9645 23.3178 25.7712 23.6636 24.3087C24.0776 22.5626 24.8808 20.6771 24.8808 19.417C24.8808 18.289 24.2748 17.3477 23.0215 17.3477C21.547 17.3477 20.3627 18.8725 20.3627 20.9156C20.3627 22.2169 20.8022 23.0974 20.8022 23.0974C20.8022 23.0974 19.2931 29.4899 19.0291 30.6097C18.5026 32.8395 18.9504 35.5726 18.9879 35.8486C19.0104 36.0121 19.2204 36.0511 19.3156 35.9266C19.4514 35.7496 21.2072 33.5812 21.8042 31.4152C21.973 30.8024 22.774 27.6261 22.774 27.6261C23.2525 28.5396 24.6528 29.3444 26.1416 29.3444C30.5735 29.3444 33.5796 25.304 33.5796 19.8955C33.5796 15.8079 30.1168 12 24.8523 12Z"
          fill="white"
        />
      </svg>
    </div>
    <div slot="copySlot">
      <svg width="25px" height="25px" viewBox="0 0 24 24" fill="none">
        <path
          d="M10 8V7C10 6.05719 10 5.58579 10.2929 5.29289C10.5858 5 11.0572 5 12 5H17C17.9428 5 18.4142 5 18.7071 5.29289C19 5.58579 19 6.05719 19 7V12C19 12.9428 19 13.4142 18.7071 13.7071C18.4142 14 17.9428 14 17 14H16M7 19H12C12.9428 19 13.4142 19 13.7071 18.7071C14 18.4142 14 17.9428 14 17V12C14 11.0572 14 10.5858 13.7071 10.2929C13.4142 10 12.9428 10 12 10H7C6.05719 10 5.58579 10 5.29289 10.2929C5 10.5858 5 11.0572 5 12V17C5 17.9428 5 18.4142 5.29289 18.7071C5.58579 19 6.05719 19 7 19Z"
          stroke="#464455"
        />
      </svg>
      </div>
      </ymlwebcl-social-media-sharing>
</template>
<script>
export default {
  name: "App",
  data() {
    return {
      socialMediaDetails: [
        {
          id: "1",
          platform: "linkedIn",
          text: "linkedIn",
          slotName: "linkedInSlot",
        },
        {
          id: "2",
          platform: "twitter",
          text: "twitter",
          slotName: "twitterSlot",
        },
        {
          id: "3",
          platform: "facebook",
          text: "facebook",
          slotName: "facebookSlot",
        },
        {
          id: "4",
          platform: "pinterest",
          text: "pinterest",
          slotName: "pinterestSlot",
        },
      ],
      showOptions: false,
      shareUrl: "https://yml.co/",
      showCopyButton: true,
      copyText: "copy link",
    };
  },
  methods: {
    handleShareButton() {
      console.log("Custom event has been triggered");
      this.showOptions = !this.showOptions;
    },
    handleCopyButton() {
      console.log("custom event has been triggered");
      this.copyText = "copied";
    },
  },
};
</script>
<style>
#app {
}
</style>
```

## With React
React can render Web Components, but it cannot easily pass React props to custom element properties or event listeners. 
This Web-Component wrapper package- (https://www.npmjs.com/package/reactify-wc) correctly passes React props to properties accepted by the custom element and listens for events dispatched by the custom element.

```bash
npm i reactify-wc
```

### With default value
```js
import reactifyWc from "reactify-wc";
import { useState } from "react";

function App() {
  const SocialMediaSharing = reactifyWc("ymlwebcl-social-media-sharing");
  const [openShare, setOpenShare] = useState(false);

  const handleShareButton = (e) => {
    console.log("custom event has been triggered");
    setOpenShare(!openShare);
  };
  return (
    <div className="App">
      <SocialMediaSharing
        showOptions={openShare}
        shareUrl="https://yml.co/"
        handleShareButton="handleShare"
        on-handleShare={handleShareButton}
      />
    </div>
  );
}
export default App;
```

### With Prop
```js
import reactifyWc from "reactify-wc";
import { useState } from "react";

function App() {
  const SocialMediaSharing = reactifyWc("ymlwebcl-social-media-sharing");

  const [copyText, setCopyText] = useState("copy");
  const [openShare, setOpenShare] = useState(false);

  const socialMediaDetails = [
    {
      id: "1",
      platform: "linkedIn",
      text: "linkedIn",
    },
    {
      id: "2",
      platform: "twitter",
      text: "twitter",
    },
    {
      id: "3",
      platform: "facebook",
      text: "facebook",
    },
    {
      id: "4",
      platform: "pinterest",
      text: "pinterest",
    },
  ];

  const handleCopyButton = (e) => {
    console.log("custom event has been triggered");
    setCopyText("copied");
  };

  const handleShareButton = (e) => {
    console.log("custom event has been triggered");
    setOpenShare(!openShare);
  };
  return (
    <div className="App">
      <SocialMediaSharing
        showOptions={openShare}
        socialMediaDetails={socialMediaDetails}
        shareUrl="https://yml.co/"
        showCopyButton={true}
        handleShareButton="handleShare"
        on-handleShare={handleShareButton}
        handleCopyButton="handleCopy"
        on-handleCopy={handleCopyButton}
        copyText={copyText}
      />
    </div>
  );
}
export default App;
```

### With Slot
```js
import reactifyWc from "reactify-wc";
import { useState } from "react";

function App() {
  const SocialMediaSharing = reactifyWc("ymlwebcl-social-media-sharing");

  const [copyText, setCopyText] = useState("copy");
  const [openShare, setOpenShare] = useState(false);

  const socialMediaDetails = [
    {
      id: "1",
      platform: "linkedIn",
      text: "linkedIn",
      slotName: "linkedInSlot",
    },
    {
      id: "2",
      platform: "twitter",
      text: "twitter",
      slotName: "twitterSlot",
    },
    {
      id: "3",
      platform: "facebook",
      text: "facebook",
      slotName: "facebookSlot",
    },
    {
      id: "4",
      platform: "pinterest",
      text: "pinterest",
      slotName: "pinterestSlot",
    },
  ];

  const handleCopyButton = (e) => {
    console.log("custom event has been triggered");
    setCopyText("copied");
  };

  const handleShareButton = (e) => {
    console.log("custom event has been triggered");
    setOpenShare(!openShare);
  };
  return (
    <div className="App">
      <SocialMediaSharing
        shareButtonText=""
        showOptions={openShare}
        socialMediaDetails={socialMediaDetails}
        shareUrl="https://yml.co/"
        shareButtonSlotName="share"
        showCopyButton={true}
        handleShareButton="handleShare"
        on-handleShare={handleShareButton}
        handleCopyButton="handleCopy"
        on-handleCopy={handleCopyButton}
        copyText={copyText}
        copyButtonSlotName="copySlot"
      >
        <div slot="share">
          <svg width="25px" height="25px" viewBox="0 0 24 24" fill="none">
            <path
              d="M9 6L12 3M12 3L15 6M12 3V13M7.00023 10C6.06835 10 5.60241 10 5.23486 10.1522C4.74481 10.3552 4.35523 10.7448 4.15224 11.2349C4 11.6024 4 12.0681 4 13V17.8C4 18.9201 4 19.4798 4.21799 19.9076C4.40973 20.2839 4.71547 20.5905 5.0918 20.7822C5.5192 21 6.07899 21 7.19691 21H16.8036C17.9215 21 18.4805 21 18.9079 20.7822C19.2842 20.5905 19.5905 20.2839 19.7822 19.9076C20 19.4802 20 18.921 20 17.8031V13C20 12.0681 19.9999 11.6024 19.8477 11.2349C19.6447 10.7448 19.2554 10.3552 18.7654 10.1522C18.3978 10 17.9319 10 17 10"
              stroke="#000000"
              stroke-width="2"
            />
          </svg>
        </div>
        <div slot="linkedInSlot">
          <svg width="30px" height="30px" viewBox="0 0 16 16">
            <path
              fill="#0A66C2"
              d="M12.225 12.225h-1.778V9.44c0-.664-.012-1.519-.925-1.519-.926 0-1.068.724-1.068 1.47v2.834H6.676V6.498h1.707v.783h.024c.348-.594.996-.95 1.684-.925 1.802 0 2.135 1.185 2.135 2.728l-.001 3.14zM4.67 5.715a1.037 1.037 0 01-1.032-1.031c0-.566.466-1.032 1.032-1.032.566 0 1.031.466 1.032 1.032 0 .566-.466 1.032-1.032 1.032zm.889 6.51h-1.78V6.498h1.78v5.727zM13.11 2H2.885A.88.88 0 002 2.866v10.268a.88.88 0 00.885.866h10.226a.882.882 0 00.889-.866V2.865a.88.88 0 00-.889-.864z"
            />
          </svg>
        </div>

        <div slot="twitterSlot">
          <svg width="30px" height="30px" viewBox="0 0 32 32">
            <path
              d="M11.7887 28C8.55374 28 5.53817 27.0591 3 25.4356C5.15499 25.5751 8.95807 25.2411 11.3236 22.9848C7.76508 22.8215 6.16026 20.0923 5.95094 18.926C6.25329 19.0426 7.6953 19.1826 8.50934 18.856C4.4159 17.8296 3.78793 14.2373 3.92748 13.141C4.695 13.6775 5.99745 13.8641 6.50913 13.8174C2.69479 11.0882 4.06703 6.98276 4.74151 6.09635C7.47882 9.88867 11.5812 12.0186 16.6564 12.137C16.5607 11.7174 16.5102 11.2804 16.5102 10.8316C16.5102 7.61092 19.1134 5 22.3247 5C24.0025 5 25.5144 5.71275 26.5757 6.85284C27.6969 6.59011 29.3843 5.97507 30.2092 5.4432C29.7934 6.93611 28.4989 8.18149 27.7159 8.64308C27.7224 8.65878 27.7095 8.62731 27.7159 8.64308C28.4037 8.53904 30.2648 8.18137 31 7.68256C30.6364 8.52125 29.264 9.91573 28.1377 10.6964C28.3473 19.9381 21.2765 28 11.7887 28Z"
              fill="#47ACDF"
            />
          </svg>
        </div>
        <div slot="facebookSlot">
          <svg width="30px" height="30px" viewBox="0 0 48 48">
            <circle cx="24" cy="24" r="20" fill="#3B5998" />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M29.315 16.9578C28.6917 16.8331 27.8498 16.74 27.3204 16.74C25.8867 16.74 25.7936 17.3633 25.7936 18.3607V20.1361H29.3774L29.065 23.8137H25.7936V35H21.3063V23.8137H19V20.1361H21.3063V17.8613C21.3063 14.7453 22.7708 13 26.4477 13C27.7252 13 28.6602 13.187 29.8753 13.4363L29.315 16.9578Z"
              fill="white"
            />
          </svg>
        </div>
        <div slot="pinterestSlot">
          <svg width="30px" height="30px" viewBox="0 0 48 48">
            <circle cx="24" cy="24" r="20" fill="#BD081C" />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M24.8523 12C18.3024 12 15 16.6959 15 20.6118C15 22.9826 15.8978 25.0924 17.8231 25.8777C18.1389 26.0067 18.4216 25.8822 18.5131 25.5327C18.5769 25.2905 18.7276 24.6799 18.7944 24.4257C18.8866 24.0799 18.8506 23.9592 18.5956 23.6577C18.0406 23.0029 17.6858 22.1553 17.6858 20.9546C17.6858 17.4699 20.2929 14.3513 24.4736 14.3513C28.1757 14.3513 30.2098 16.6141 30.2098 19.6345C30.2098 23.6096 28.4502 26.9645 25.8394 26.9645C24.3971 26.9645 23.3178 25.7712 23.6636 24.3087C24.0776 22.5626 24.8808 20.6771 24.8808 19.417C24.8808 18.289 24.2748 17.3477 23.0215 17.3477C21.547 17.3477 20.3627 18.8725 20.3627 20.9156C20.3627 22.2169 20.8022 23.0974 20.8022 23.0974C20.8022 23.0974 19.2931 29.4899 19.0291 30.6097C18.5026 32.8395 18.9504 35.5726 18.9879 35.8486C19.0104 36.0121 19.2204 36.0511 19.3156 35.9266C19.4514 35.7496 21.2072 33.5812 21.8042 31.4152C21.973 30.8024 22.774 27.6261 22.774 27.6261C23.2525 28.5396 24.6528 29.3444 26.1416 29.3444C30.5735 29.3444 33.5796 25.304 33.5796 19.8955C33.5796 15.8079 30.1168 12 24.8523 12Z"
              fill="white"
            />
          </svg>
        </div>
        <div slot="copySlot">
          <svg width="25px" height="25px" viewBox="0 0 24 24" fill="none">
            <path
              d="M10 8V7C10 6.05719 10 5.58579 10.2929 5.29289C10.5858 5 11.0572 5 12 5H17C17.9428 5 18.4142 5 18.7071 5.29289C19 5.58579 19 6.05719 19 7V12C19 12.9428 19 13.4142 18.7071 13.7071C18.4142 14 17.9428 14 17 14H16M7 19H12C12.9428 19 13.4142 19 13.7071 18.7071C14 18.4142 14 17.9428 14 17V12C14 11.0572 14 10.5858 13.7071 10.2929C13.4142 10 12.9428 10 12 10H7C6.05719 10 5.58579 10 5.29289 10.2929C5 10.5858 5 11.0572 5 12V17C5 17.9428 5 18.4142 5.29289 18.7071C5.58579 19 6.05719 19 7 19Z"
              stroke="#464455"
            />
          </svg>
        </div>
      </SocialMediaSharing>
    </div>
  );
}
export default App;

```

### Styling the Custom Component
Ref: https://developer.mozilla.org/en-US/docs/Web/CSS/::part

```style.scss
//The ::part CSS pseudo-element represents any element within a shadow tree that has a matching part attribute.
ymlwebcl-social-media-sharing::part(media-share-button) {/*Note : ymlwebcl-social-media-sharing is the custom component and media-share-button is the name given to the the part attribute for the element within ymlwebcl-social-media-sharing */
  margin-bottom: 4px;
}

ymlwebcl-social-media-sharing::part(media-option-button) {
  display: flex;
  flex-direction: row;
  border: 1px solid rgb(197, 196, 196);
  padding: 3px;
}
```

## Compatibility

| [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/edge/edge_48x48.png" alt="IE / Edge" width="24px" height="24px" />](http://godban.github.io/browsers-support-badges/)<br>IE / Edge | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/firefox/firefox_48x48.png" alt="Firefox" width="24px" height="24px" />](http://godban.github.io/browsers-support-badges/)<br>Firefox | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/chrome/chrome_48x48.png" alt="Chrome" width="24px" height="24px" />](http://godban.github.io/browsers-support-badges/)<br>Chrome | [<img src="https://raw.githubusercontent.com/alrra/browser-logos/master/src/safari/safari_48x48.png" alt="Safari" width="24px" height="24px" />](http://godban.github.io/browsers-support-badges/)<br>Safari  
| --- | --- | --- | --- |

## Accessibility

Throughout the development of this component proper a11y options are set. This means things like aria-valuemin , aria-valuemax, aria-valuenow, role are set and any user can use the SocialMediaSharing component easily.

## Localization

SocialMediaSharing component supports localization, currently supports English[en], Spanish[es-419] and Chinese[zh-Hans]


