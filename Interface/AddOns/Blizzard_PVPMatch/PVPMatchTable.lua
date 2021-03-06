PVPRowMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPRowMixin:Init(useAlternateColor)
	self.useAlternateColor = useAlternateColor;
end

function PVPRowMixin:Populate(rowData, dataIndex)
	local faction = rowData.faction;
	local color = PVPMatchUtil.GetRowColor(faction, self.useAlternateColor);
	local r, g, b = color:GetRGB();
	for k, background in pairs(self.Backgrounds) do
		background:SetVertexColor(r, g, b);
	end
end

PVPHeaderMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPHeaderMixin:Init(sortType, tooltipText)
	self.sortType = sortType;
	self.tooltipText = tooltipText;
end

function PVPHeaderMixin:OnClick()
	local sortType = self.sortType;
	if sortType then
        SortBattlefieldScoreData(sortType);
	end
	
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON);
end

function PVPHeaderMixin:OnEnter()
	local tooltipText = self.tooltipText;
	if tooltipText then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		GameTooltip_AddColoredLine(GameTooltip, tooltipText, WHITE_FONT_COLOR, true);
		GameTooltip:Show();
	end
end

function PVPHeaderMixin:OnLeave()
	GameTooltip:Hide();
end

PVPHeaderIconMixin = CreateFromMixins(PVPHeaderMixin);

function PVPHeaderIconMixin:Init(textureFileID, sortType)
	PVPHeaderMixin.Init(self, sortType);
	self.textureFileID = textureFileID;

	local icon = self.icon;
	icon:SetTexture(self.textureFileID);
	self:SetSize(icon:GetSize());
end

PVPCellClassMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPCellClassMixin:Populate(rowData, dataIndex)
	local classToken = rowData.classToken;
	local coords = classToken and CLASS_ICON_TCOORDS[classToken];
	local icon = self.icon;
	if coords then
		icon:SetTexCoord(unpack(coords));
		icon:SetTexture("Interface\\WorldStateFrame\\Icons-Classes");
	end
end

function PVPCellClassMixin:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
	local className = self.rowData.className or "";
	local talentSpec = self.rowData.talentSpec;
	if talentSpec then
		local tooltipText = format(TALENT_SPEC_AND_CLASS, talentSpec, className);
		GameTooltip_AddNormalLine(GameTooltip, tooltipText, true);
	else
		GameTooltip_AddNormalLine(GameTooltip, className, true);
	end
	GameTooltip:Show();
end

function PVPCellClassMixin:OnLeave()
	GameTooltip:Hide();
end

PVPCellHonorLevelMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPCellHonorLevelMixin:Populate(rowData, dataIndex)
	local honorLevel = rowData.honorLevel;
	if honorLevel then
		local honorRewardInfo = C_PvP.GetHonorRewardInfo(honorLevel);
		local fileID = honorRewardInfo and honorRewardInfo.badgeFileDataID;
		self.icon:SetTexture(fileID);
	end
end

function PVPCellHonorLevelMixin:OnEnter()
	local honorLevel = self.rowData.honorLevel;
	if honorLevel and honorLevel > 0 then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
		GameTooltip_AddNormalLine(GameTooltip, HONOR_LEVEL_TOOLTIP:format(honorLevel), true);
		GameTooltip:Show();
	end
end

function PVPCellHonorLevelMixin:OnLeave()
	GameTooltip:Hide();
end

PVPHeaderStringMixin = CreateFromMixins(PVPHeaderMixin);

function PVPHeaderStringMixin:Init(textID, textAlignment, sortType, tooltipText)
	PVPHeaderMixin.Init(self, sortType, tooltipText)
	self.textID = textID;

	-- Assign the text to get a reference width.
	local text = self.text;
	text:SetJustifyH(textAlignment);
	text:SetText(self.textID);
	
	-- Clamp the width to force wrapping, if applicable.
	local width = text:GetStringWidth();
	local maxColumnWidth = 80;
	text:SetWidth(math.min(width, maxColumnWidth));

	-- Reassign the wrapped width to ensure our region is confined to
	-- the resulting text.
	local wrappedWidth = text:GetWrappedWidth();
	text:SetWidth(wrappedWidth);

	self:SetWidth(wrappedWidth);
end

local function FormatCellColor(frame, rowData, useAlternateColor)
	local faction = rowData.faction;
	local guid = rowData.guid;
	local GetCellColor = function(useAlternateColor)
		if IsPlayerGuid(guid) then
			return WHITE_FONT_COLOR;
		else
			return PVPMatchUtil.GetCellColor(faction, useAlternateColor);
		end
	end;

	local color = GetCellColor(useAlternateColor);
	frame:SetVertexColor(color:GetRGB());
end

PVPCellStringMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPCellStringMixin:Init(dataProviderKey, useAlternateColor, isAbbreviated, hasTooltip)
	self.dataProviderKey = dataProviderKey;
	self.useAlternateColor = useAlternateColor;
	self.isAbbreviated = isAbbreviated;
	self.hasTooltip = hasTooltip;
end

function PVPCellStringMixin:Populate(rowData, dataIndex)
	local value = rowData[self.dataProviderKey];
	if self.isAbbreviated then
		value = AbbreviateNumbers(value);
	end

	local text = self.text;
	text:SetText(value);

	FormatCellColor(text, rowData, self.useAlternateColor);
end

function PVPCellStringMixin:OnEnter()
	if self.hasTooltip then
		local value = self.rowData[self.dataProviderKey];
		if value then
			if type(value) == "number" then
				value = BreakUpLargeNumbers(value);
			end

			GameTooltip:SetOwner(self, "ANCHOR_RIGHT");
			GameTooltip_AddNormalLine(GameTooltip, value, true);
			GameTooltip:Show();
		end
	end
end

function PVPCellStringMixin:OnLeave()
	GameTooltip:Hide();
end

PVPCellNameMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPCellNameMixin:Init(useAlternateColor)
	self.useAlternateColor = useAlternateColor;
	self.text:SetJustifyH("LEFT");
end

function PVPCellNameMixin:Populate(rowData, dataIndex)
	local name = rowData.name;
	local text = self.text;
	text:SetText(name);

	FormatCellColor(text, rowData, self.useAlternateColor);
end

function PVPCellNameMixin:OnEnter()
	local tooltipOffset = 0 - self.text:GetWidth();
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT", tooltipOffset, 0);
	
	local className = self.rowData.className or "";
	local raceName = self.rowData.raceName or "";
	GameTooltip_AddNormalLine(GameTooltip, self.rowData.name);
	GameTooltip_AddColoredLine(GameTooltip, raceName.." "..className, WHITE_FONT_COLOR, true);
	GameTooltip:Show();
end

function PVPCellNameMixin:OnLeave()
	GameTooltip:Hide();
end

PVPCellStatMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPCellStatMixin:Init(dataProviderKey, useAlternateColor)
	self.dataProviderKey = dataProviderKey;
	self.useAlternateColor = useAlternateColor;
end

function PVPCellStatMixin:Populate(rowData, dataIndex)
	local value = TableBuilderDataProviderUtil.TraverseToValue(rowData, self.dataProviderKey);
	if value then
		local iconName = value.iconName;
		local amount = value.pvpStatValue;
		local text = self.text;
		if not iconName or iconName == "" then
			text:SetText(amount);
		else
			local markup = CreateAtlasMarkup(iconName,16,16,0,-2);
			local count = FLAG_COUNT_TEMPLATE:format(amount);
			local string = markup..count;
			text:SetText(string);
		end

		FormatCellColor(text, rowData, self.useAlternateColor);
	end
end

PVPNewRatingMixin = CreateFromMixins(TableBuilderElementMixin);

function PVPNewRatingMixin:Init(useAlternateColor)
	self.useAlternateColor = useAlternateColor;
end

function PVPNewRatingMixin:Populate(rowData, dataIndex)
	local rating = rowData.rating;
	local ratingChange = rowData.ratingChange;
	local newRating = rating + ratingChange;

	local text = self.text;
	text:SetText(newRating);

	FormatCellColor(text, rowData, self.useAlternateColor);
end

function ConstructPVPMatchTable(tableBuilder, useAlternateColor)
	local iconPadding = 2;
	local textPadding = 15;
	local categories = PVPMatchUtil.GetOptionalCategories();
	
	tableBuilder:Reset();
	tableBuilder:SetDataProvider(C_PvP.GetScoreInfo);
	tableBuilder:SetTableMargins(5);

	local column = tableBuilder:AddColumn();
	column:ConstructHeader("BUTTON", "PVPHeaderIconTemplate", [[Interface/PVPFrame/Icons/prestige-icon-3]], "honorLevel");
	column:ConstrainToHeader();
	column:ConstructCells("FRAME", "PVPCellHonorLevelTemplate");

	column = tableBuilder:AddColumn();
	column:ConstructHeader("BUTTON", "PVPHeaderIconTemplate", [[Interface/PvPRankBadges/PvPRank06]], "class");
	column:ConstrainToHeader(iconPadding);
	column:ConstructCells("FRAME", "PVPCellClassTemplate");

	column = tableBuilder:AddColumn();
	column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", NAME, "LEFT", "name");
	local fillCoefficient = 1.0;
	local namePadding = 4;
	column:ConstructCells("BUTTON", "PVPCellNameTemplate", useAlternateColor);
	column:SetFillConstraints(fillCoefficient, namePadding);

	column = tableBuilder:AddColumn();
	column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", SCORE_KILLING_BLOWS, "CENTER", "kills", KILLING_BLOW_TOOLTIP);
	column:ConstrainToHeader(textPadding);
	column:ConstructCells("FRAME", "PVPCellStringTemplate", "killingBlows", useAlternateColor);
	
	if categories.honorableKills then
		column = tableBuilder:AddColumn();
		column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", SCORE_HONORABLE_KILLS, "CENTER", "hk", HONORABLE_KILLS_TOOLTIP);
		column:ConstrainToHeader(textPadding);
		column:ConstructCells("FRAME", "PVPCellStringTemplate", "honorableKills", useAlternateColor);
	end
	 
	if categories.deaths then
		column = tableBuilder:AddColumn();
		column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", DEATHS, "CENTER", "deaths", DEATHS_TOOLTIP);
		column:ConstrainToHeader(textPadding);
		column:ConstructCells("FRAME", "PVPCellStringTemplate", "deaths", useAlternateColor);
	end
	
	local isAbbreviated = true;
	local hasTooltip = true;
	column = tableBuilder:AddColumn();
	column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", SCORE_DAMAGE_DONE, "CENTER", "damage", DAMAGE_DONE_TOOLTIP);
	column:ConstrainToHeader(textPadding);
	column:ConstructCells("FRAME", "PVPCellStringTemplate", "damageDone", useAlternateColor, isAbbreviated, hasTooltip);

	column = tableBuilder:AddColumn();
	column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", SCORE_HEALING_DONE, "CENTER", "healing", HEALING_DONE_TOOLTIP);
	column:ConstrainToHeader(textPadding);
	column:ConstructCells("FRAME", "PVPCellStringTemplate", "healingDone", useAlternateColor, isAbbreviated, hasTooltip);

	local statColumns = {};
	for pvpStatIndex, pvpStatID in ipairs(C_PvP.GetMatchPVPStatIDs()) do
		local statColumn = C_PvP.GetMatchPVPStatColumn(pvpStatID);
		statColumn.sortType = "stat"..pvpStatIndex;
		statColumn.statPath = "stats."..pvpStatIndex;
		tinsert(statColumns, statColumn)
	end

	table.sort(statColumns, function(a, b)
		return a.orderIndex < b.orderIndex end
	);

	for i, statColumn in ipairs(statColumns) do
		local name = statColumn.name;
		if strlen(name) > 0 then
		column = tableBuilder:AddColumn();
		column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", statColumn.name, "CENTER", statColumn.sortType, statColumn.tooltip);
		column:ConstrainToHeader(textPadding);
		column:ConstructCells("FRAME", "PVPCellStatTemplate", statColumn.statPath, useAlternateColor);
		end
	end
	
	if categories.ratingPre then
		column = tableBuilder:AddColumn();
		column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", BATTLEGROUND_RATING, "CENTER", "bgratingPre", BATTLEGROUND_RATING);
		column:ConstrainToHeader(textPadding);
		column:ConstructCells("FRAME", "PVPCellStringTemplate", "rating", useAlternateColor);
	end
	
	if categories.ratingPost then
		column = tableBuilder:AddColumn();
		column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", BATTLEGROUND_NEW_RATING, "CENTER", "bgratingPost", BATTLEGROUND_NEW_RATING);
		column:ConstrainToHeader(textPadding);
		column:ConstructCells("FRAME", "PVPNewRatingTemplate", useAlternateColor);
	end

	if categories.ratingChange then
		column = tableBuilder:AddColumn();
		column:ConstructHeader("BUTTON", "PVPHeaderStringTemplate", SCORE_RATING_CHANGE, "CENTER", "bgratingChange", RATING_CHANGE_TOOLTIP);
		column:ConstrainToHeader(textPadding);
		column:ConstructCells("FRAME", "PVPCellStringTemplate", "ratingChange", useAlternateColor);
	end

	tableBuilder:Arrange();
end