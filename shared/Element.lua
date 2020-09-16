Element = {
    __class = 'Element',
    __index = Element,
    __call  = function(class, ...)
        if (class == Element) then
            return setmetatable({__class = ({...})[1]}, {__index = Element})
        else
            return class.__call(...)
        end
    end,

    getPosition = function(element) return getElementPosition(element.element) end, 
}

setmetatable(Element, Element)