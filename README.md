# BlizzardInterfaceResources
Use this https://www.townlong-yak.com/framexml/live this will allow you to search for specific stuff.
Use this https://wow.tools/ this will allow you to check wow's database.
WoW Class colors https://wowpedia.fandom.com/wiki/Class_colors
Item quality colors https://wowpedia.fandom.com/wiki/API_GetItemQualityColor
https://wowpedia.fandom.com/wiki/Patch_10.0.0/API_changes
Global resources extracted from World of Warcraft for development purposes.

TOC for all versions of wow

Future patches will make a tweak to the suffixes supported by each client.

    For Classic, the client will now additionally search for AddonName_Vanilla.toc.
    For BCC, the client will now additionally search for AddonName_TBC.toc.
    For Retail, the client will now additionally search for AddonName_Mainline.toc.

The existing suffixes (-Classic.toc, -BCC.toc, and -Mainline.toc) will still be supported.
Additionally, the separator between the addon name and the client suffix can be either _ or -; so AddonName-TBC.toc is valid as well as AddOnName_BCC.toc.
The new suffixes will be supported in an upcoming client hotfix for patch 2.5.1 and 9.1, and are presently implemented on the patch 2.5.2 PTR.

For avoidance of doubt, these are all the file name formats presently supported on all clients and the order that each client will attempt to load them in currently. On the wiki [we're recommending that people use a single specific suffix for each client](https://wowpedia.fandom.com/wiki/TOC_format#Multiple_client_flavors) for overall consistency, which corresponds to the first file in each sub-list below and is the format used by Blizzard.

![](https://i.imgur.com/ydZoLRQ.png)
