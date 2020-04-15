var express = require('express');
var router = express.Router();

router.post('/registro',(req, res, next)=> {
		res.json({"status":"register ok"})
});
router.post('/login',(req, res, next)=> {
		res.json({"status":"login ok"})
});
module.exports = router;
