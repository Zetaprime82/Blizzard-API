# BlizzardInterfaceResources
Use this https://www.townlong-yak.com/framexml/live this will allow you to search for specific stuff.
Use this https://wow.tools/ this will allow you to check wow's database.
WoW Class colors https://wowpedia.fandom.com/wiki/Class_colors
Item quality colors https://wowpedia.fandom.com/wiki/API_GetItemQualityColor
https://wowpedia.fandom.com/wiki/Patch_10.0.0/API_changes
Global resources extracted from World of Warcraft for development purposes.

--------------------------------------------------------------------------------------------------------
[TOC for all versions of wow](https://github.com/Stanzilla/WoWUIBugs/issues/68#issuecomment-889431675)

Future patches will make a tweak to the suffixes supported by each client.

-For Classic, the client will now additionally search for <code class="notranslate"><code class="notranslate">AddonName_Vanilla.toc</code>
-For BCC, the client will now additionally search for <code class="notranslate">AddonName_TBC.toc</code>
-For Retail, the client will now additionally search for <code class="notranslate">AddonName_Mainline.toc</code>
  
The existing suffixes (<code class="notranslate">-Classic.toc</code>, <code class="notranslate">-BCC.toc</code>, and <code class="notranslate">-Mainline.toc</code>) will still be supported.
Additionally, the separator between the addon name and the client suffix can be either _ or -; so AddonName-TBC.toc is valid as well as AddOnName_BCC.toc.
The new suffixes will be supported in an upcoming client hotfix for patch 2.5.1 and 9.1, and are presently implemented on the patch 2.5.2 PTR.

For avoidance of doubt, these are all the file name formats presently supported on all clients and the order that each client will attempt to load them in currently. On the wiki [we're recommending that people use a single specific suffix for each client](https://wowpedia.fandom.com/wiki/TOC_format#Multiple_client_flavors) for overall consistency, which corresponds to the first file in each sub-list below and is the format used by Blizzard.

- Retail
  1. AddOnName_Mainline.toc
  2. AddOnName-Mainline.toc
  3. AddOnName.toc

- BCC
  1. AddOnName_TBC.toc
  2. AddOnName_BCC.toc
  3. AddOnName-TBC.toc
  4. AddOnName-BCC.toc
  5. AddOnName.toc

- Classic Era
  1. AddOnName_Vanilla.toc
  2. AddOnName_Classic.toc
  3. AddOnName-Vanilla.toc
  4. AddOnName-Classic.toc
  5. AddOnName.toc
------------------------------------------
![](https://i.imgur.com/ydZoLRQ.png)
