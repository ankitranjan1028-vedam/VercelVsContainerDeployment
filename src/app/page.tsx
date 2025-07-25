'use client';

import React, { useState } from 'react';
import { Typography, Button, TextField, Box } from '@mui/material';

const Page: React.FC = () => {
  const [name, setName] = useState('');

  const handleClick = () => {
    alert(`Hello, ${name || 'Guest'}!`);
  };

  return (
    <Box p={4}>
      <Typography variant="h4" gutterBottom>
        Welcome to MUI + TypeScript
      </Typography>

      <Typography variant="body1" gutterBottom>
        Enter your name and click the button:
      </Typography>

      <Box display="flex" gap={2} alignItems="center" mb={3}>
        <TextField
          label="Your Name"
          variant="outlined"
          value={name}
          onChange={(e) => setName(e.target.value)}
        />
        <Button variant="contained" onClick={handleClick}>
          Greet
        </Button>
      </Box>
    </Box>
  );
};

export default Page;
