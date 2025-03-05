import os
import smtplib
import mimetypes
from email.message import EmailMessage
from email.utils import make_msgid
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email import encoders

# Configuration
EMAIL_ADDRESS = 'your_email@example.com'
EMAIL_PASSWORD = 'your_password'
SMTP_SERVER = 'smtp.example.com'
SMTP_PORT = 587
RECIPIENT_EMAIL = 'recipient@example.com'
SUBJECT = 'Attached .txt Files from Directory'
BODY = 'Please find attached .txt files from the directory.'

def find_txt_files(directory):
    """Find all .txt files in the given directory."""
    txt_files = []
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith('.txt'):
                txt_files.append(os.path.join(root, file))
    return txt_files

def create_email(subject, body, sender_email, recipient_email, attachments):
    """Create an email with the specified subject, body, and attachments."""
    msg = MIMEMultipart()
    msg['From'] = sender_email
    msg['To'] = recipient_email
    msg['Subject'] = subject

    msg.attach(MIMEText(body, 'plain'))

    for file in attachments:
        with open(file, 'rb') as f:
            mime_type, _ = mimetypes.guess_type(file)
            mime_type, mime_subtype = mime_type.split('/')

            part = MIMEBase(mime_type, mime_subtype)
            part.set_payload(f.read())
            encoders.encode_base64(part)
            part.add_header('Content-Disposition', f'attachment; filename="{os.path.basename(file)}"')

            msg.attach(part)

    return msg

def send_email(email_message, smtp_server, smtp_port, email_address, email_password):
    """Send the email via the specified SMTP server."""
    with smtplib.SMTP(smtp_server, smtp_port) as server:
        server.starttls()
        server.login(email_address, email_password)
        server.send_message(email_message)

def main():
    directory_to_search = '.'  # Change to the directory you want to search
    txt_files = find_txt_files(directory_to_search)

    if not txt_files:
        print('No .txt files found.')
        return

    email_message = create_email(SUBJECT, BODY, EMAIL_ADDRESS, RECIPIENT_EMAIL, txt_files)
    send_email(email_message, SMTP_SERVER, SMTP_PORT, EMAIL_ADDRESS, EMAIL_PASSWORD)
    print('Email sent successfully.')

if __name__ == '__main__':
    main()