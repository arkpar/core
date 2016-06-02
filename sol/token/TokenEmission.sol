import './Token.sol';

contract TokenEmission is Owned, Token {
    function TokenEmission(string _name, string _symbol, uint _start_count)
                Token(_name, _symbol, _start_count)
    {}

    /**
     * @dev Token emission
     * @param _value amount of token values to emit
     * @notice owner balance will be increased by `_value`
     */
    function emission(uint _value) onlyOwner {
        totalSupply      += _value;
        balanceOf[owner] += _value;
    }
 
    /**
     * @dev Burn the token values from owner balance and from total
     * @param _value amount of token values for burn 
     * @notice owner balance will be decreased by `_value`
     */
    function burn(uint _value) onlyOwner {
        if (balanceOf[owner] >= _value) {
            balanceOf[owner] -= _value;
            totalSupply      -= _value;
        }
    }
}
