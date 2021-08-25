--	  AresstAnims - animaciones de Aresst para FiveM
--    Copyright (C) 2021  J A V I
--
--    Este programa es software gratuito: puedes redistribuirlo y / o modificar
--    bajo los términos de la Licencia Pública General GNU publicada por
--    la Free Software Foundation, ya sea la versión 3 de la Licencia, o
--   (a su elección) cualquier versión posterior.
--
--    Este programa se distribuye con la esperanza de que sea de utilidad,
--    pero SIN NINGUNA GARANTÍA; sin siquiera la garantía implícita de
--    COMERCIABILIDAD o APTITUD PARA UN PROPÓSITO EN PARTICULAR. Ver el
--    Licencia pública general GNU para más detalles.
--
--    Debería haber recibido una copia de la Licencia Pública General GNU
--    junto con este programa. De lo contrario, consulte <http://www.gnu.org/licenses/>.

AddEventHandler('chatMessage', function(source, name, msg)
	cm = stringsplit(msg, " ");
	if cm[1] == "/k" then
	CancelEvent()
	TriggerClientEvent('KneelHU', source)
	end
	end)

	function stringsplit(inputstr, sep)
		if sep == nil then
			sep = "%s"
		end
		local t={} ; i=1
		for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
			t[i] = str
			i = i + 1
		end
		return t
	end