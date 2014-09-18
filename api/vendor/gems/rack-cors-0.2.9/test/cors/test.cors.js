(function() {
  var CORS_SERVER;

  CORS_SERVER = 'cors-server:3000';

  describe('CORS', function() {
    it('should allow access to dynamic resource', function(done) {
      return $.get("http://" + CORS_SERVER + "/", function(data, status, xhr) {
        expect(data).to.eql('Hello world');
        return done();
      });
    });
    it('should allow access to static resource', function(done) {
      return $.get("http://" + CORS_SERVER + "/static.txt", function(data, status, xhr) {
        expect($.trim(data)).to.eql("hello world");
        return done();
      });
    });
    return it('should allow post resource', function(done) {
      return $.ajax({
        type: 'POST',
        url: "http://" + CORS_SERVER + "/cors",
        beforeSend: function(xhr) {
          return xhr.setRequestHeader('X-Requested-With', 'XMLHTTPRequest');
        },
        success: function(data, status, xhr) {
          expect($.trim(data)).to.eql("OK!");
          return done();
        }
      });
    });
  });

}).call(this);
