echo="Please enter your choice:"
options=("ShioRamen" "ShoyuRamen" "Tonkotsu" "Tsukemen" "CurryRamen" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "ShioRamen")
            echo "you have selected ShioRamen for 510 yen"
            ;;
        "ShoyuRamen")
            echo "you have selected ShoyuRamen for 490 yen"
            ;;
        "Tonkotsu")
            echo "you have selected Tonkotsu for 550 yen"
            ;;
        "Tsukemen")
            echo "you have selected Tsukemen for 650 yen"
            ;;
	"CurryRamen")
		echo "you have selected CurryRamen for 520 yen"
		;;
	"Quit")
		break
		;;
    esac
done

