const { createClient } = require('@supabase/supabase-js');

const SUPABASE_URL = 'https://glnzltetqxpvxsoqwerz.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdsbnpsdGV0cXhwdnhzb3F3ZXJ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjkxOTkxMjgsImV4cCI6MjA4NDc3NTEyOH0.9frBI-FbIHf2q-ZzOGsGbEOkG7n8t5aCM6VP4RyRiWo';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkAdmins() {
    const { data, error } = await supabase
        .from('profiles')
        .select('email, role')
        .eq('role', 'admin');

    if (error) {
        console.error('Error:', error);
    } else {
        console.log('Admins:', data);
    }
}

checkAdmins();
