var handler = async m => m.reply(`
╭─「 Donasi 」
│ • TELKOMSEL [081310665285]
│ • DANA [08889616144]
│ • GOPAY [08889616144]
│ • Saweria [https://saweria.co/Ekuzika]
╰────
╭─「 Hubungi 」
│ > Ingin donasi? Wa.me/628889616144
╰────
`.trim()) // Tambah sendiri kalo mau
handler.help = ['donasi']
handler.tags = ['info']
handler.command = /^dona(te|si)$/i

module.exports = handler
