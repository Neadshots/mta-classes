local side = triggerClientEvent and true or false

local cachedClasses = {
    -- all time read class file when call class function instead read one time and cache it then return it
    Player = '', -- the importClass function will return this strings, in other resource it will load class with loadstring
}  

addEventHandler('on'..(side and 'Client' or '')..'ResourceStart', resourceRoot,
function()
    for className in pairs(cachedClasses) do
        local classFile = fileOpen((side and 'client/' or 'server/')..className)
        if (classFile) then
            local classContent       = fileRead(classFile, fileGetSize(classFile))
            cachedClasses[className] = classContent -- cache the class
            fileClose(classContent)
        else
            print('error: can\'t find class file with this name: '..className)
        end
    end
end)

function class(className)
    assert(class and type(className) == 'string', 'Excepted class name at argument 1 got '..className)

    if (className == '*') then
        local classes = ''
        for className, classContent in pairs(cachedClasses) do
            classes = '\n\n'..classContent
        end
        return classes

    else
        local class = classes[className]
        assert(class, 'Can\'t find class with this '..className..', please take a look to the your class name')

        return class
    end
end