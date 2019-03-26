tool
extends EditorScript

func _run():
	var packer = PCKPacker.new()
	packer.pck_start("res://addons/PCKManager/test/test.pck",0)
	packer.add_file("res://icon.png","res://icon.png")
	packer.add_file("res://icon2.png","res://icon.png")
	packer.add_file("res://test/icon.png","res://icon.png")
	packer.add_file("res://test/icon2.png","res://icon.png")
	packer.add_file("res://test2/icon.png","res://icon.png")
	packer.add_file("res://test2/icon2.png","res://icon.png")
	packer.flush(true)
	
	
	#{GDPC}{int32_version}{int32_major}{int32_minor}{int32_revision} 16x{int32_reserved}{files_count}
	#{Path-String}
	
	print("\n\n===============\n")
	
	var file = File.new()
	
	#file.set_endian_swap(true)
	file.open("res://addons/PCKManager/test/test.pck",File.READ)
	
	print(str(file.get_32() == 0x43504447))
	print("Version: ",file.get_32()," / Major: ",file.get_32()," / Minor: ",file.get_32()," / Revision: ",file.get_32())
	
	for i in range(16):
		file.get_32()
	
	var file_count = file.get_32()
	print("Files: ", file_count)
	
	for i in range(file_count):
		#print("__-- File: ",i," --__")
		var length = file.get_32()
		#print("length: ", length)
		
		var path = file.get_buffer(length).get_string_from_utf8()
		print("Path: ", path)
		
		var offset =  file.get_64()
		var size = file.get_64()
		var md5 = file.get_buffer(16)
		#print("offset: ", offset, " / Size: ", size, " / md5: ",md5)
	
	#file.seek(189)
	#var png = file.get_buffer(3498)
	
	#print(png.size())
	
	file.close()
	
	print("\n\n===============\n")
	
	pass

