# buildspace-dev-s03

### Week 1 (Established logic using Axelar GMP)
Cross Chain Token Streaming 

![image](https://user-images.githubusercontent.com/43913734/232319124-a10eb43c-210e-41f8-9202-dcbae578ec5d.png)
![image](https://user-images.githubusercontent.com/43913734/232319148-2d9e15fc-694c-469f-b8a9-675bad2fa83a.png)

### general message passing from celo to polygon using axlear gateway
- `sendToken` method
- Contract address `0x276e730490D4B8a70361D8976a9328A2A8EAEF8c`
- Contract gateway for aUSDC token `0xe432150cce91c13a887f7D836923d5597adD8E31`
- Verify on [Testnet Axelar Scan](https://testnet.axelarscan.io/transfer/0xede3f914ca3d5c847d1ff7873de3ed2467a092f889916e2eb2209f1b4083be9f)

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

### Week 2
Develop a basic token streaming application

### Week 3
Add cross chain functionaliy using Axelar General Passing

### Week 4
Construct simple UI
