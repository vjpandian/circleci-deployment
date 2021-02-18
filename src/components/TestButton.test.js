import React from 'react';
import { render, cleanup } from '@testing-library/react';
import TestButton from './TestButton'
afterEach(cleanup);
   it('should be enabled', () => {
    const { getByTestId } = render(<TestButton />);
    expect(getByTestId('button_container')).not.toHaveAttribute('disabled')
  });