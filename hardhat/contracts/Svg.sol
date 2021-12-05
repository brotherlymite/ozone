pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";

contract Tree {
    uint256 public size = 5;

    function setSize(uint256 _size) public {
        size = _size;
    }

    function getBgColor() public view returns (bytes memory) {
        return abi.encodePacked("'rgb(21,28,25)'");
    }

    function getStColor() public view returns (bytes memory) {
        return abi.encodePacked("'rgb(43,138,121)'");
    }

    function getGetPath1() public view returns (bytes memory) {
        return
            abi.encodePacked(
                "d='M 100 300 L 100",
                Strings.toString(300 - size),
                "'"
            );
    }

    function getNFTMetadata() public view returns (string memory) {
        string memory tree = string(
            abi.encodePacked(
                "<svg version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' width='300' height='300' viewBox='0 0 300 300'><defs />",
                "<g>",
                "<rect fill=",
                getBgColor(),
                "stroke='none' x='0' y='0' width='300' height='300' transform='matrix(1 0 0 1 0 0)' fill-opacity='1' />",
                "<path fill='none' stroke=",
                getStColor(),
                " paint-order='fill stroke markers'",
                getGetPath1(),
                "stroke-opacity='1' stroke-linecap='round' stroke-miterlimit='10' stroke-dasharray=''/>",
                "<path fill='none' stroke=",
                getStColor(),
                "paint-order='fill stroke markers' d=' M 100 295 L 100 290' stroke-opacity='1' stroke-linecap='round' stroke-miterlimit='10' stroke-dasharray='' />",
                "<g>",
                "<path fill='none' stroke=",
                getStColor(),
                "paint-order='fill stroke markers' d=' M 100 290 L 102.5 285.6698729810778' stroke-opacity='1' stroke-linecap='round' stroke-miterlimit='10' stroke-dasharray='' />"
                "</g>",
                "<g>",
                "<path fill='none' stroke=",
                getStColor(),
                "paint-order='fill stroke markers' d=' M 100 290 L 98.7059047744874 285.17037086855464' stroke-opacity='1' stroke-linecap='round' stroke-miterlimit='10' stroke-dasharray='' />",
                "</g>",
                "</g>",
                "</svg>"
            )
        );

        return tree;
    }
}
