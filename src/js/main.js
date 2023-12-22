/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

/*
 * This function gets loaded when all the HTML, not including the portlets, is
 * loaded.
 */
AUI().ready(function () {});

/* truncar texto card-padrão*/
const observer2 = new MutationObserver(function (mutations) {
  mutations.forEach(function (mutation) {
    const richTextContainers =
      mutation.target.querySelectorAll(".richTextContainer");
    const maxLength = 100; // máximo de caracteres

    richTextContainers.forEach((container) => {
      const content = container.textContent.trim();
      if (content.length > maxLength) {
        const truncatedContent = content.substring(0, maxLength);
        container.textContent = truncatedContent + "...";
      }
    });
  });
});

observer2.observe(document.body, { subtree: true, childList: true });
/* truncar texto */

/* truncar texto card-slick */
const observer3 = new MutationObserver(function (mutations) {
  mutations.forEach(function (mutation) {
    const richTextContainers = mutation.target.querySelectorAll(
      ".richTextContainer2"
    );
    const maxLength = 70; // máximo de caracteres

    richTextContainers.forEach((container) => {
      const content = container.textContent.trim();
      if (content.length > maxLength) {
        const truncatedContent = content.substring(0, maxLength);
        container.textContent = truncatedContent + "...";
      }
    });
  });
});

observer3.observe(document.body, { subtree: true, childList: true });
/* truncar texto card */

/*
 * This function gets loaded after each and every portlet on the page.
 *
 * portletId: the current portlet's id
 * node: the Alloy Node object of the current portlet
 */
Liferay.Portlet.ready(function (_portletId, _node) {});

/*
 * This function gets loaded when everything, including the portlets, is on
 * the page.
 */
Liferay.on("allPortletsReady", function () {});
