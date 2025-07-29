public class JSONPlaceholderExercise {
    private static final String BASE_URL = 'https://jsonplaceholder.typicode.com';
    
    /**
     * Exercise 1: Implement a GET request to fetch a post by ID
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to fetch
     * @return String - The JSON response from the API
     */
    public static String getPostById(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'GET'
        // 4. Send the request and get the response
        // 5. Return the response body as string
        Http http = new Http();
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint(BASE_URL+'/posts/'+postId);
        request.setMethod('GET');

        HttpResponse response = http.send(request);
        system.debug(response.getbody());

        return response.getbody();
    }
    
    /**
     * Exercise 2: Implement a POST request to create a new post
     * Endpoint: /posts
     * @param title - The title of the post
     * @param body - The body content of the post
     * @param userId - The user ID creating the post
     * @return String - The JSON response from the API
     */
    public static String createPost(String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts'
        // 3. Set the HTTP method to 'POST'
        // 4. Create a JSON string with the post data
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string

        String jsonString = '{"userId":userId,"title":title,"body":body}';
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(BASE_URL+'/posts');
        request.setMethod('POST');
        request.setBody(jsonString);

        HttpResponse response = http.send(request);
         system.debug('Postresp'+response.getbody());
        return response.getBody();
    }
    
    /**
     * Exercise 3: Implement a PUT request to update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to update
     * @param title - The new title
     * @param body - The new body content
     * @param userId - The user ID
     * @return String - The JSON response from the API
     */
    public static String updatePost(Integer postId, String title, String body, Integer userId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'PUT'
        // 4. Create a JSON string with the updated post data
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        String jstonString = '{"postId":postId,"title":"This is Updated post","body":"This is updated body","userId":userId}';
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(BASE_URL+'/posts/'+postId);
        request.setMethod('PUT');
        request.setBody(jstonString);

        HttpResponse response = http.send(request);
        system.debug('putResp'+response.getbody());
        return response.getBody();
    }
    
    /**
     * Exercise 4: Implement a PATCH request to partially update a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to patch
     * @param title - The new title (can be null)
     * @return String - The JSON response from the API
     */
    public static String patchPostTitle(Integer postId, String title) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'PATCH'
        // 4. Create a JSON string with only the title
        // 5. Set the request body
        // 6. Send the request and get the response
        // 7. Return the response body as string
        String jstonString = '{"postId":postId,"title":"This is Updated post2"}';
        Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(BASE_URL+'/posts/'+postId);
        request.setMethod('PATCH');
        request.setBody(jstonString);

        HttpResponse response = http.send(request);
        system.debug('patchResp'+response.getbody());
        return response.getBody();
    }
    
    /**
     * Exercise 5: Implement a DELETE request to remove a post
     * Endpoint: /posts/{postId}
     * @param postId - The ID of the post to delete
     * @return Integer - The HTTP status code from the response
     */
    public static Integer deletePost(Integer postId) {
        // TODO: Student Implementation
        // 1. Create a new HTTP request
        // 2. Set the endpoint URL using BASE_URL + '/posts/' + postId
        // 3. Set the HTTP method to 'DELETE'
        // 4. Send the request and get the response
        // 5. Return the response status code
         Http http = new Http();

        HttpRequest request = new HttpRequest();
        request.setEndpoint(BASE_URL+'/posts/'+postId);
        request.setMethod('DELETE');

        HttpResponse response = http.send(request);
        system.debug('patchResp'+response.getbody());
        return response.getStatusCode();
    }
} 