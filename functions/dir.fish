function dir -a path -d "Creates subdirectories and jumps inside"
	mkdir -p $path
	and cd $path
end
