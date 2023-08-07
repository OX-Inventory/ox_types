---@meta

---@class ox_property
exports.ox_property = {}

---@class OxPropertyTransactionParty
---@field identifier? integer | string
---@field name? string

---@class OxPropertyManagementData
---@field groups { name: string, label: string, grades: string[] }[]
---@field nearbyPlayers { name: string, charid: integer }[]

---@param property string
---@param componentId integer
---@return OxPropertyObject | OxPropertyComponent
function exports.ox_property:getPropertyData(property, componentId) end

---@param player integer | OxPlayer
---@param propertyName string
---@param componentId integer
---@param componentType string
---@return boolean | integer, string?
function exports.ox_property:IsPermitted(player, propertyName, componentId, componentType) end

---@param source number
---@param msg string
---@param data { amount: number, from: OxPropertyTransactionParty, to: OxPropertyTransactionParty }
---@return boolean, string?
function exports.ox_property:Transaction(source, msg, data) end

---@param data { entity: integer, model: string, seats?: integer }
function exports.ox_property:clearVehicleOfPassengers(data) end

---@param player integer | OxPlayer
---@param component OxPropertyComponent
---@param properties VehicleProperties
---@return boolean, string
function exports.ox_property:storeVehicle(player, component, properties) end

---@param player integer | OxPlayer
---@param component OxPropertyComponent
---@param id integer
---@return boolean, string
function exports.ox_property:retrieveVehicle(player, component, id) end
