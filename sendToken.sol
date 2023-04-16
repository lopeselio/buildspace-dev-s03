pragma solidity ^0.8.0;
import { IAxelarGateway } from '@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGateway.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract sendToken {
    IAxelarGateway public immutable gateway;
    IERC20 public immutable token;
    constructor(address gateway_, address token_){
        gateway = IAxelarGateway(gateway_);
        token = IERC20(token_);
    }

    function send() public {
        uint amount = 1 * 10 ** 6;
        token.approve(address(gateway), amount);
        gateway.sendToken(
            "Polygon",
            "0xbE8Ace29e3022CD6841821315F82a6C2484fE585",
            "aUSDC",
            amount
        );
    }

}
