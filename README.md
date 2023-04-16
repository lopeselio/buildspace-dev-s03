# buildspace-dev-s03

Cross Chain Token Streaming 

![image](https://user-images.githubusercontent.com/43913734/232319124-a10eb43c-210e-41f8-9202-dcbae578ec5d.png)
![image](https://user-images.githubusercontent.com/43913734/232319148-2d9e15fc-694c-469f-b8a9-675bad2fa83a.png)

### general message passing 
- `sendToken` method

```
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
```
